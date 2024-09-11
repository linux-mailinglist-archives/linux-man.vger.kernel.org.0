Return-Path: <linux-man+bounces-1774-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E49974837
	for <lists+linux-man@lfdr.de>; Wed, 11 Sep 2024 04:30:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1601D1C257F7
	for <lists+linux-man@lfdr.de>; Wed, 11 Sep 2024 02:30:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1CB922092;
	Wed, 11 Sep 2024 02:30:23 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from r9221.ps.combzmail.jp (r9221.ps.combzmail.jp [160.16.65.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83EEAAD51
	for <linux-man@vger.kernel.org>; Wed, 11 Sep 2024 02:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.65.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726021823; cv=none; b=fVzbM3itl9EWag40CxGk4LvWZkrx2tqbnpDpcqohzuiAo0KE01+Ca88dCP19Js36Hnm1NVWw6reatweIOfU0FlqYcamEQ0NNrQmDjPSiCXDOoE8caYiEQzoiVxYfCkLG0Q7WNyJZheni3wag1HgMnCdfzStKKDMMVQmMFWZYQoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726021823; c=relaxed/simple;
	bh=VDpcUYVwLJXzHwKvZxazlpgAmb6AiDAyK7XHmGGOiC0=;
	h=To:From:Subject:Mime-Version:Content-Type:Message-Id:Date; b=aSuGxk8Ti5/cff6E50XXZcKQ7eZcOesxDjjLu1GX+EsHqJJAie/zuxUSlpsHJ9/XB6+qldMU/JLdJ4/LRdPFjh5x2AE/3l2UtFW+emRrsemxFEaJgd4VtQyRx6o/4wYkM697aafM6zDYgC/qcpSCxJSBxJEHSQrJC7O1vehJGRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fc-seminar.jp; spf=pass smtp.mailfrom=magerr.combzmail.jp; arc=none smtp.client-ip=160.16.65.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=fc-seminar.jp
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=magerr.combzmail.jp
Received: by r9221.ps.combzmail.jp (Postfix, from userid 99)
	id 63032E5152; Wed, 11 Sep 2024 11:15:17 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 r9221.ps.combzmail.jp 63032E5152
To: linux-man@vger.kernel.org
From: =?ISO-2022-JP?B?GyRCNjUwaTt2NkgbKEI=?= =?ISO-2022-JP?B?GyRCQGIbKEI=?=
 =?ISO-2022-JP?B?GyRCTEAycRsoQg==?= <info@fc-seminar.jp>
X-Ip: 3167301689629368
X-Ip-source: k85gj7ra48dnsa5pu0p6gd
Precedence: bulk
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?ISO-2022-JP?B?GyRCJDMkSSRiJE4lVyVtJTAlaSVfJXMlMCEiGyhC?=
 =?ISO-2022-JP?B?GyRCNjUwaTt2NkgbKEIgRkMbJEJAYkxAMnEbKEI=?=
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-2022-jp
Content-Transfer-Encoding: 7bit
X-MagazineId: ra5p
X-uId: 6762304939485865644259211048
X-Sender: CombzMailSender
X-Url: http://www.combzmail.jp/
Message-Id: <20240911021902.63032E5152@r9221.ps.combzmail.jp>
Date: Wed, 11 Sep 2024 11:15:17 +0900 (JST)

いつもお世話になります。


日本の将来を担う、こどもの教育にたずさわるフランチャイズ事業の
加盟パートナーを募集するオンライン説明会をご案内申し上げます。


業界未経験・社員1名でスタートができ、実際にオーナー様の
9割以上は異業種から新規参入されています。


新規事業をお考えの方はこの機会に是非ご参加くださいませ。


　9月24日（火）　14:00〜15:00　オンライン開催
----------------------------------------------------------


　　　　　　　　不況に強い「教育事業」
　　　　　　 新規参入 オンラインセミナー

　　　　　 〜少子化でこそ、成長する理由〜

　　　　　　　　　▼  詳細・申込  ▼
　　　　　　 https://wam-edu-fc.jp/wam2/

　  　　　　　　　◆　ご案内事業　◆
　　　プログラミング教育＆個別指導学習塾 WAM（ワム）

　　　　　　　　　◇　　 提供 　　◇
　　　　　　　  エイチ・エム・グループ


----------------------------------------------------------

『少子化なのに、教育事業？』と思うかもしれませんが、
実は子ども一人にかける教育費の増加に伴い、市場は成長し続けています。


また、教育費は不況時でも削減されにくいため
コロナ下でも大きく落ち込むことなく底堅さを見せました。


幼児教育無償化などの国策もあり、今後も教育投資の増加が予想されます。


そこでご紹介するのが、「プログラミング×個別指導」のハイブリッド教育事業です。


プログラミングは小学校で必修化されたため、保護者の関心も高まっています。


本事業のスタートは業界未経験・社員１名で可能です。


新たな事業収益づくりをお考えの方は、是非ご参加ください。


　9月24日（火）　14:00〜15:00　オンライン開催
　▼  詳細・申込  ▼
　https://wam-edu-fc.jp/wam2/


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
　教育事業FCセミナー事務局
　電話：0120-891-893
　住所：東京都中央区銀座7-13-6
―――――――――――――――――――――――――――――――
　本メールのご不要な方には大変ご迷惑をおかけいたしました。
　今後ご案内が不要な方は下記URLよりお手続きをお願いいたします。
　┗　https://wam-edu-fc.jp/mail/
　または件名に「配信不要」と記載して本メールにそのまま
　返信していただくことでも承っております。
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

