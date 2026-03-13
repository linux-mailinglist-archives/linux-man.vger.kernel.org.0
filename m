Return-Path: <linux-man+bounces-5255-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GO4pKq1gs2lcVgAAu9opvQ
	(envelope-from <linux-man+bounces-5255-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 13 Mar 2026 01:56:13 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB64527C122
	for <lists+linux-man@lfdr.de>; Fri, 13 Mar 2026 01:56:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E31373215EF0
	for <lists+linux-man@lfdr.de>; Fri, 13 Mar 2026 00:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B707430DD1B;
	Fri, 13 Mar 2026 00:48:06 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from r9110.ps.combzmail.jp (r9110.ps.combzmail.jp [49.212.36.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8B91E5B64
	for <linux-man@vger.kernel.org>; Fri, 13 Mar 2026 00:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=49.212.36.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773362886; cv=none; b=CJ6hO8nOJgBOVXMuNyHB9KmiqKYwN9xlwQ2zb5WRDT/JqhZCWnbJshrfFSXgk9RKEzlJa5KbyB/yyN2D3l3w2CTe0f+LEsCV5piBLY6ESMgGuWCdMROfheNYyF1GbL1voO2RLOcuTbGqDcb9NPHlxcPKFwG1AbrIrR8Q9PcTRc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773362886; c=relaxed/simple;
	bh=7TuY+2y7nZ61T3ef5jFo7ow+HJm3q2VbpPBvnbWsSN8=;
	h=To:From:Subject:Mime-Version:Content-Type:Message-Id:Date; b=oiJeaRQw+96VIyZdy07Htn3qQuPL7ww+pNgtcjPY4I7N1HZrZjl6764pPPYsfRBeG9Xqu9PL7liUo92p+X8FYIpX92hguv93SnjVVoNKNv/ciUReGvLa/KOFVhF+u2N3zPWNwfSxyw1/npqxgqCgqSi53XW234aG2CcU+pcLP6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fc-session.jp; spf=pass smtp.mailfrom=magerr.combzmail.jp; arc=none smtp.client-ip=49.212.36.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fc-session.jp
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=magerr.combzmail.jp
Received: by r9110.ps.combzmail.jp (Postfix, from userid 99)
	id 22CAE187D1E; Fri, 13 Mar 2026 09:37:10 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 r9110.ps.combzmail.jp 22CAE187D1E
To: linux-man@vger.kernel.org
From: =?ISO-2022-JP?B?GyRCQFBFaBsoQg==?= =?ISO-2022-JP?B?GyRCPFM1KBsoQg==?= <info@fc-session.jp>
X-Ip: 398390615300263
X-Ip-source: k85gj7ra48dnsa5pu0p6gd
Precedence: bulk
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?ISO-2022-JP?B?GyRCPGo3eCQkPzc7djZIISNGfEtcJE4+LU1oGyhC?=
 =?ISO-2022-JP?B?GyRCJHJDNCQmISIkMyRJJGI2NTBpGyhC?=
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-2022-jp
Content-Transfer-Encoding: 7bit
X-MagazineId: ra5p
X-uId: 6764245138486059655035351023
X-Sender: CombzMailSender
X-Url: http://www.combzmail.jp/
Message-Id: <20260313003744.22CAE187D1E@r9110.ps.combzmail.jp>
Date: Fri, 13 Mar 2026 09:37:10 +0900 (JST)
X-Spamd-Result: default: False [-0.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5255-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[fc-session.jp];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_ONE(0.00)[1];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[info@fc-session.jp,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,wam-edu-fc.jp:url]
X-Rspamd-Queue-Id: BB64527C122
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

　新しい事業をお考えの方向けに、

　日本の将来を担う、こども教育にたずさわる
　事業パートナー募集のオンライン説明会を
　ご視聴頂きたく、ご連絡いたしました。
　
　本事業は9割以上、異業種から新規参入されており
　「未経験」「社員1名」でスタート可能です。
　
　本業はそのままに、収益づくりをお考えの方はぜひご視聴ください。

-----------------------------------------------------------

 　　　不況に強く、少子化でも成長する
 　　　 プログラミング教育×個別指導
　― 地域に"初"のハイブリッド型学習塾を ―
　
　日時：3月26日(木) 15:00〜16:00
　形式：オンライン開催
　提供：エイチ・エム・グループ

　　　　　　＜ご視聴はこちら＞
　　　　https://wam-edu-fc.jp/wam2/

-----------------------------------------------------------
　
　
　『少子化なのに、教育事業？』と、思うかもしれませんが
　
　実は、教育無償化などの国策もあり、子ども一人にかける
　教育費の増加に伴い、市場は成長し続けています。
　
　また、教育費は不況時でも削減されにくいため
　コロナ下でも大きく落ち込むことなく底堅さを見せました。
　
　そんな教育業界の中でも、プログラミング（IT教育）は
　小学校で必修化されたため、保護者の関心が非常に高まっています。
　
　
　そこで今回ご紹介するのが、全国300校舎、継続率97.6％を誇る
　ハイブリッド教育事業「個別指導WAM」です。
　
　サイバーエージェント社開発の教材を活用した
　「プログラミング×個別指導」という
　他塾にはない独自の教育事業を提供しています。

　いったい、教育市場にどのようなビジネスチャンスがあるのか？

　オンラインセミナーで分かりやすく丁寧に
　お伝えしますので、ぜひご視聴ください。
　
　　　　　　＜ご視聴はこちら＞
　　　　https://wam-edu-fc.jp/wam2/
　
　
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
　教育事業FCセミナー事務局
　電話：0120-889-859
　住所：東京都中央区銀座7-13-6
―――――――――――――――――――――――――――――――
　本メールのご不要な方には大変ご迷惑をおかけいたしました。
　今後ご案内が不要な方は下記URLよりお手続きをお願いいたします。
　┗　https://wam-edu-fc.jp/mail/
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

