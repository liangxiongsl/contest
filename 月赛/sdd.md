\hypertarget{a}{%
\subsubsection{A}\label{a}}

对于每个十进制数都可以表示成 \texttt{...XXXXXX} 的二进制形式其中
\texttt{X=0} 或 \texttt{X=1}

\begin{enumerate}
\def\labelenumi{\arabic{enumi}.}
\tightlist
\item
  最开始的 \(1..n\) 个数字（记为排列 P）可以分成两组，分别是
  \texttt{...XXXXX0}，\texttt{...XXXXX1}，第一轮会淘汰掉奇数而保留形如
  \texttt{...XXXXX0} 的数字
\item
  第二轮的数字也分分为两组：\texttt{...XXXX00}，
  \texttt{...XXXXX10}，再次淘汰后者，而形如 \texttt{...XXXX00}
  的数字会保留
\item
  \ldots{}
\end{enumerate}

那么最后留下来的数字 m 就是 \texttt{100000...}；换句话说，m 是不大于 n
的最大值

\href{https://pastebin.com/PDYjv65X}{solution}

\hypertarget{b}{%
\subsubsection{B}\label{b}}

贪心的做法是每次都买最贵的那个（最贵的那一个总是要买的），然后免单第二贵的手办（如果存在）

反证：买了最贵的手办后，如果我们总是对第 k(\(k\ge 3\))
贵的手办进行免单，并不会比直接免单第二贵的手办更优

\href{https://pastebin.com/gSgdGnX4}{solution}

\hypertarget{c}{%
\subsubsection{C}\label{c}}

前置知识：二分查找，前缀最大值

我们对主人的期望友善值按照关键字 y 升序排序，

对于第 i 个猫猫，在``主人''这个集合中二分查找严格大于 \(x_i\) 的下标
j，此时下标为 \(k=1..j-1\) 的``主人''满足
\(x_i \le y_k\)，那么第一个限制条件我们就解决了

剩下的主要问题是：在下标为 \(k=1..j-1\) 的``主人''集合中找到满足
\(y_i \le x_k\) 的 \(x_k\)
的最大值，这显然可以预处理``前缀最大值''来解决（当然也可以用 树状数组 或
线段树 为维护前缀最大值）

注：``前缀最大值''实际上是前缀和的推广

\href{https://pastebin.com/SSQ5G4VN}{solution}

\hypertarget{d}{%
\subsubsection{D}\label{d}}

\begin{enumerate}
\def\labelenumi{\arabic{enumi}.}
\tightlist
\item
  如果字符串形如 \texttt{1111111}，答案显然是 \(n\times n\)
\item
  如果字符串存在 0，假设形如 \texttt{11111} 子段长度为
  x，那么其子矩阵面积的函数可以表示为
  \(S(y) = (x-y)(y+1)\)，\(\max\{ s(y) \} = s(\frac {x-1}2)\)（y
  是子段右下方平移的次数）；双指针搜索所有子段求出最大值即可
\item
  对于 (2) 中子段在 s 的两边出现的情况，我们对字符串加宽一倍来处理（即
  \(s = s + s\)）（这种操作通常出现在有\textbf{循环字符串}等关键字的题目中出现）
\end{enumerate}

\href{https://pastebin.com/YzhpyuG0}{solution}

\hypertarget{e}{%
\subsubsection{E}\label{e}}

设抛物线为 \(y=ax^2+by+c\)（\(a>0\)），任意直线为 \(y=kx\)

它们不相交，当且仅当 \(\delta = (k-b)^2-4ac \ge 0\)

二分找出对于每个抛物线，二分找出最接近 \(b_i\) 的两个斜率即可（因为
\(\delta\) 在这附近取最大值）

\href{https://pastebin.com/wgAWWQSk}{solution}
