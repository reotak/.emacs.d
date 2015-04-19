using System;
using System.Collections.Generic;
using System.Linq;

using System.Text;

namespace StaticCallGraph {
    /// <summary>
    /// Relationのオプション情報を保持するためのクラス
    /// </summary>
    class RelationOption {
        public bool IsRead;
        public bool IsWrite;
        public bool IsRefRead;
        public bool IsRefWrite;
		public bool IsInCondition;
        public string TargetName;
        public string TargetScope;

        /// <summary>
        /// コンストラクタ
        /// </summary>
        public RelationOption() {
            IsRead = false;
            IsWrite = false;
            IsRefRead = false;
            IsRefWrite = false;
			IsInCondition = false;
            TargetName = "";
            TargetScope = "";
        }

        override public string ToString() {
            //設定されたオプションを文字列に変換してリスト化する
            List<string> options = new List<string>();
            if (IsRead)
                options.Add("R");
            if (IsWrite)
                options.Add("W");
            if (IsRefRead)
                options.Add("RefR");
            if (IsRefWrite)
                options.Add("RefW");
			if (IsInCondition)
				options.Add("条");

            string result = ""; //結果を代入するための変数
            //各要素ごとに
            for (int i = 0; i < options.Count; i++) {
                //最後の要素でなかったら
                if (i + 1 < options.Count) {
                    result += options[i] + "/";
                } else { //最後の要素だった場合
                    result += options[i];
                }
            }

			//ターゲットの名前とスコープ両方が設定されている場合
			if (TargetName != "" && TargetScope != "") {
				result += "(" + TargetName + ":" + TargetScope + ")";
			} else {
				if (TargetName != "") {
					result += "(" + TargetName + ")";
				}

				if (TargetScope != "") {
					result += "(" + TargetScope + ")";
				}
			}

            return result;
        }
    }
}
