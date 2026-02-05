Return-Path: <linux-man+bounces-5029-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGOiCMXqg2nlvgMAu9opvQ
	(envelope-from <linux-man+bounces-5029-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 01:56:37 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 745D4ED835
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 01:56:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C19EC3013A68
	for <lists+linux-man@lfdr.de>; Thu,  5 Feb 2026 00:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E33A176ADE;
	Thu,  5 Feb 2026 00:51:05 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from r9133.ps.combzmail.jp (r9133.ps.combzmail.jp [49.212.13.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 995EA45C0B
	for <linux-man@vger.kernel.org>; Thu,  5 Feb 2026 00:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=49.212.13.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770252664; cv=none; b=gpQtIB5L65cpdWUzBrPR0OXaDs36WtAZm5kWyBccZw3zWK6/wbGrwP8yvq//uBiWf4FTvZXAkafYcT1axk7IH9uUSxo3Nc15BDMYslPRaPJ+s+JxygV1F2Ou8UkuRbilI3+a+BGWt47neOghhJKeGvYEvZLb08FxZLQivs9Zcdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770252664; c=relaxed/simple;
	bh=OpA8AlYtfsRXND8tTXGNemdhnEgZd08L2a02dAD9x+s=;
	h=To:From:Subject:Mime-Version:Content-Type:Message-Id:Date; b=OyiDIVq44BXo6aPoPAWR2rEJDrPx+OUi6AQDWmNNv0Fu1tKg81Dd16B1Z+FsnN/51a2zSK76AGPsdIWbSjzgLieVeT1ry9KGfecl3GKd0ayYhlEyFAY5AHcjuttYGQSPCVksSJafavqpZ/Do/oSW8axTaXpsQcZjlZkfdZE/iFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=knowledge-seminar.jp; spf=pass smtp.mailfrom=magerr.combzmail.jp; arc=none smtp.client-ip=49.212.13.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=knowledge-seminar.jp
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=magerr.combzmail.jp
Received: by r9133.ps.combzmail.jp (Postfix, from userid 99)
	id 65A8687084; Thu,  5 Feb 2026 09:39:49 +0900 (JST)
DKIM-Filter: OpenDKIM Filter v2.11.0 r9133.ps.combzmail.jp 65A8687084
To: linux-man@vger.kernel.org
From: =?ISO-2022-JP?B?GyRCP0BFRCE/JUolbCVDJTglaiVzJS8bKEI=?= <info@knowledge-seminar.jp>
X-Ip: 6986362076767008
X-Ip-source: k85gj72848dnsad1u0p6gd
Precedence: bulk
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Subject: =?ISO-2022-JP?B?GyRCNWtNPyRLJEQkJCRGGyhC?=
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-2022-jp
Content-Transfer-Encoding: 7bit
X-MagazineId: 28d1
X-uId: 6764234337486058575470221051
X-Sender: CombzMailSender
X-Url: http://www.combzmail.jp/
Message-Id: <20260205004017.65A8687084@r9133.ps.combzmail.jp>
Date: Thu,  5 Feb 2026 09:39:49 +0900 (JST)
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [9.74 / 15.00];
	FUZZY_DENIED(9.40)[1:9f9af09483:0.62:txt];
	MV_CASE(0.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[knowledge-seminar.jp];
	TAGGED_FROM(0.00)[bounces-5029-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	GREYLIST(0.00)[pass,body];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[info@knowledge-seminar.jp,linux-man@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-0.997];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(0.00)[+ip4:172.234.253.10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fc-knowledgelink-corp.jp:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,r9133.ps.combzmail.jp:mid]
X-Rspamd-Queue-Id: 745D4ED835
X-Rspamd-Action: add header
X-Spam: Yes

　お世話になります。ナレッジリンク セミナー事務局です。
　
　
　ある日突然
　「社長、ちょっとご相談が・・・」
　
　そんな言葉をきっかけに、キーパーソンが離職してしまった。
　
　査定が引き金となり、組織全体の士気が下がり、
　業績に悪影響をもたらす。
　
　そんな“痛い失敗”を防ぐため、4,300人の経営者が共感した
　「給与の決め方」をお伝えする、オンラインセミナーを開催いたします。

　>> 視聴予約はこちら
　　 https://knowledge-corp.jp/shikigaku/

----------------------------- セミナー概要 ----　
　
　テーマ ：失敗しない「給与の決め方」
　
　日 程　：2月10日（火）13:00〜
　　　　　 2月24日（火）13:00〜
　　　　　 2月26日（木）13:00〜
　　　　　 ※いずれの日程も内容は同じです
　会 場　：Zoom開催
　定 員　：先着150名（費用は不要）
　特 典　：セミナー資料進呈
----------------------------------------------
　※経営層の方限定です


　本セミナーでは、識学マネジメント理論を
　ベースに、“経営者の視点”から
　給与制度を実務的に解説します。
　
　評価と報酬の連動設計、
　制度導入の落とし穴、
　そして、「働かないおじさん」問題の本質まで。
　
　【内容】
　1．評価と査定を正しく連動させる方法
　2．絶対に外せない制度設計のポイント
　3．やってはいけない評価制度の共通点
　4．導入企業の成功・失敗事例
　5．質疑応答
　
　
　こんなお悩み、ありませんか？
　
　・昇給・昇格の要件が曖昧で社員の不満が溜まっている
　・成果を出していない社員の給与が高止まりしている
　・制度を作ったが、結局うまく運用できていない
　
　それは、「給与の決め方」が原因かもしれません。
　
　制度が曖昧なままでは、
　査定のたびに不公平感が生まれ、
　離職リスクが高まります。
　
　一方で、納得度の高い給与制度が
　整えば、人材が定着し
　組織全体のパフォーマンスが上がります。
　
　　
　しかし、労使共に納得できる、
　自社に適切な給与制度を
　ゼロから考えるのはとても難易度が高いです。
　
　そんな経営者や役員の方へ、
　ビジネスからスポーツ組織でも使える
　汎用性の高い、「給与の決め方」をお伝えします。

　>> 視聴予約はこちら
　　 https://knowledge-corp.jp/shikigaku/
　
　
　この機会にぜひご視聴ください。

-----------------------
　一般社団法人 ナレッジリンク
　東京都千代田区神田小川町1-8-3
　電話：03-5256-7638

　セミナーのご案内が不要な方は大変残念ではございますが、
　下記URLより手続き下さいませ。
　
　メール配信のワンクリック解除はこちら
　https://fc-knowledgelink-corp.jp/mail/
　

