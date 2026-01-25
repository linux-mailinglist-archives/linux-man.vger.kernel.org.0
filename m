Return-Path: <linux-man+bounces-4932-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uD8gFdEjdmmIMQEAu9opvQ
	(envelope-from <linux-man+bounces-4932-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 25 Jan 2026 15:08:17 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B8480EE8
	for <lists+linux-man@lfdr.de>; Sun, 25 Jan 2026 15:08:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E24CE3004C61
	for <lists+linux-man@lfdr.de>; Sun, 25 Jan 2026 14:07:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A4D43176EB;
	Sun, 25 Jan 2026 14:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=verizon.net header.i=@verizon.net header.b="CpA4XGPe"
X-Original-To: linux-man@vger.kernel.org
Received: from sonic312-23.consmr.mail.ne1.yahoo.com (sonic312-23.consmr.mail.ne1.yahoo.com [66.163.191.204])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC6DA318121
	for <linux-man@vger.kernel.org>; Sun, 25 Jan 2026 14:07:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=66.163.191.204
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769350077; cv=none; b=MNkinaCSGz+jmzoBH5hmoZ3hPE2kGuGZeufNjUftMgkuzKp8duA0WIVqXNMu++3RepE8e/LtBK/oLzoNWB+PQzQ4hd0o2T3L89x4x2ocDCwfckh/q54BAQbtOWDccJFl9T0CF3GQndguJZTYURY45woZMbipcQDACIUBRUdzNsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769350077; c=relaxed/simple;
	bh=4DcKjKpECy3ebZIk3Oj+6/RCydeQYyoWPGn9Lcq+Ahs=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type:
	 References; b=RgIFicTT9ke65fS7OKxQTEPWz57hVlTpeLTZZameBNOSs8cnkpCT8SRw8ZlvO0/EYnJcFY6Scgn5ZZPE/hrM2EYGdLR4aoUFcXgbD90P8TrnV5IaMqkokWakbUm388RRKLDoJdUCdaiPeQk2r+mam0aH3CXvoPaQ11yy5VU0EXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=Verizon.net; spf=pass smtp.mailfrom=Verizon.net; dkim=pass (2048-bit key) header.d=verizon.net header.i=@verizon.net header.b=CpA4XGPe; arc=none smtp.client-ip=66.163.191.204
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=Verizon.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=Verizon.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048; t=1769350068; bh=4DcKjKpECy3ebZIk3Oj+6/RCydeQYyoWPGn9Lcq+Ahs=; h=Date:From:Subject:To:Cc:References:From:Subject:Reply-To; b=CpA4XGPekdcwRt6u2aspLobFRZcj+3O3uHhQEXsr9YYd78abF4KNuAu1T4c1d10KQBUfEXtO1vmSj+wtHIKvXEU6LemwJrTkgLKg2S9+moZQIIbvge4KT8zKePHfgkqgAFqGMzwHe8XwmqAId6PunONIFJl8XGStbBQwj9qXzsQRQrvlMfvWMnt2cuGFW9g5iUFhk7flQVCj52l7Jx4XdFtfx9a7tpkv5oiUMA50w5HRhRghRdOULYtDT6pMdkKcERA6F17iwFLwsM43C9oTWxK7cphWLVDRVZX+VMJlhyQsdGHmqdFFNucCM4gStgUdchit4JSCo3AgARVpA6KgnQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1769350069; bh=UxrmCtiKfkjcD0sjc1OvtUutjuQ+w+/d1SYmWpZJqQc=; h=X-Sonic-MF:Date:From:Subject:To:From:Subject; b=aeeCTbqRHZORVZQ1P8oO2Xmyrq7W3gDQqHM1KO0ho15v2oAzqzT0gooGSJhRdodrAK4d6Y8Wb+PPg/mGdu6dwZdb4rc3aVU1NcIc30GzZqehI8i7iFCaKEs4fZ85NQ/uEJnLL1xYCZWDCIvNkOPoGyrQD9etF48fXxvIinA2tKSIMB28fKafX5jcp3T8k8G/0VyXxrhpr34d5jNFspyR0YiLe11Wa9KX87yQvRQSRjvOZl7Nus6Pj92U5aDFglQtWPk3Mz38TpCwpZAk21P2bN1SLv0oCV6kcBQ/5QXwO6vhtCjgGA30oCiuBrL/SqPEL10NyIbxU8XR2q4Cy7ssQA==
X-YMail-OSG: MyZBkikVM1nCcMkSrX8DGL79tfwtQ9kyNdrYI4Tu9ffcoh7mjkeQVSk0rDJH6.x
 JP7hJruGyTm_XsUep3w2IbEsCEW6nh3Y1_wnxIHgRxHYdUvZL_Y1YbWlzuKPo691JMU98xkS7sJ5
 cbQ9McZEYPWRW6SmBv4.G..KOKjbD0bxEoWx_oLG6H_345zI_TQMYiN6sqJUUjq4UhetzJ4yaoZ5
 N8x2D_80eCnTnvQdF5mkkp4Uyph6CjJbYT0Qe7FdibE0q30NNROhHYskIZ2N60DAb3L.JRV3dM8P
 dxaFDUQi5fg33Un8KCWRB0iFUtR_z_D2PcYYnzG0AK32b_MYHREyOdOY09_2EmMo.8DA0vf5On3t
 ARVbjaQFB7aZ4bZ_.R.K7i_uyHwaD35et3dlfAvY9SDWElABYn8UEaAkEV.CMTjFZV89W6LX_e8_
 khka_ohUpKI_A1MMzSwZSqtc.lHdN1HXpe.BZNMbo.WP.IHYcW_1yBxxQuQNmfh4IotJfD.j0Su6
 5Ftk8V1sU.S2.7zWZyJukch2_oBsqP9BFkF0H73bGv5Qz0L5_M9m_Pt_XXmZ2Snmwt_zTs.JhoEp
 bjbS69NuKeRjVcxAQXLjMvk1m3oWhWHQaND3jwZNtZ64xBk2rScIhwl2a7tF_q1NzFQSzh1bIRL5
 CkMe0r9JVOIlcvdX8EQHInpBGMlYhSfcB2Trr2PIlQ5KhLEoFePqpr5OXgvppt6.I2v0.s0AAGN8
 QSBMSV6HvhQtd.yfYYEMgX6oJ3jqXymNr_fP2wXDdVmV6AkPRF5RnZ2rspFU.9h9fFBiv2OgWai6
 TBZWXZdzgLWW4Vr3kr3o74lHNx1GKFn1nZ50ACv96ZSDAdhqJGvj1dLWPVhJv0Mue6Th_w7Rs7j1
 0yQL2dvQyIsJljZwb1h_ZfeL.N7hQEOSwooRj0T79SbcFqC3btH22rEPG0sSdA0nI2enMYvU5tO1
 pK84ADdjMu91UMKPo2dzzTGgWiGWCePB8CuRiy.kF6YrcKvFF6UDJRFAGfCLTgPreyncUk105TNu
 D1Lv83jYzd_LbAMa7zNSFUTH8FhF7RoU7roLDkkoSuNZhTh_TJJpsBn_WaMNNfAy4vGs_x2qv68P
 gDKPjeSAA.LhRXmXcuWiowz1_wKHlkvfaB4KYx2SitaIPNK_OhYpRQbiNYTpLQeuNodX_ZZsX96Q
 VOdLkBPskj2bMR0Y6ixt7WsngFoFqbXnMJVkfZaSo6_ZrPw6vG8_V1oe0jmklVKTt4iG2zwh1ysF
 8RTdD4vhJLRJotZR89bEkEcuVy5yrbtJjwQZ._QkN8ak0rYGvW0iXA5qh01jq3Oe0P4m2vdraLFg
 BTO4DTrfTwFSHMNyShaOmClVXGNbyYJskfkSKeww8zJUGxTUohCLpgZ9U8v60Sk3oi.yGdfs9kbV
 5yXbzwSfz.7qOgss7rSdAvO5usYfBKon.8P6KhuCkA4XOYeVuthMp0hGsHj8TsS.woNG046De1fe
 2Z0j_1d0FAkb4Kv4zcUFkY84Z1yrW7Gd_52tkWZXY0usR_yCc5IpyxmLWFqIgry6TlDPLFdZfKNM
 0BDnTzKyprfPKilrb7ybW59ZO8_LJwcu3xvscwZ311vS3.UtdYLFoo4XHLVy5Be7zWsccq64w9iW
 djDgxPlvO96imsOdCjCPph5kOC.38wwpg_tHAq68DdDKjpfll8XxVsQqsPTsDL1kAnff3LzfRJKc
 xWGdFbfEEtDFD5fFZoJSJIVc5Gp1tSoFzF1mXvT8gdzGzNsL8TeHFRdMppq_iukE5hcAEU6DSUPL
 u26iMCaW7O74.zQQmviEktpuFtIiIpRLgXNWOJxL7Nq.t7cM814KkqpwYrpeBgzqsrdIW0BZyFzT
 eUTSUKbWh7_vOeY9W8eESFXLHF9h0ciFMQfVMyD6g.WK4XJZZcywvJWZyEbJ9lR_QV5YirZVwPVE
 QpTe7U3GLynZTbe1I98jgFXBozej9ic8a5UCfqR8P3B8SJ8cMMHVITvK5XUfBSVgWZ5GPNQYrUZV
 L.2ZNjfwyAFKt5.gXweQ5TggrLfOhCNJLwiFDTrT1mreSF34LUE1W8Wtl58zjYtUqKcd2S4rUp4R
 ykit.KHfpsECb2lSpjc28JTuINm9k6B0BHxZo8ZCebsoiPdmkmR93RKlDJgYtKCfrhtJlb23th0a
 3kdP.RyuZjoPvh7yRUNCFQknyHb7kct5RMriat9BaaKOTwoqYoHH57xLQ3772BFHFnnfHcHBQchq
 qq4cIj_9UDHh8oZfzAAu3Sv1KhCay35SJ97imLXiWXe6eAKzOvE_MEwcvyV7HF2K_PpNaSJUNIo1
 X1h.u43LXqkpuUt_wL50-
X-Sonic-MF: <M.Aramini@Verizon.net>
X-Sonic-ID: 033451ab-60c8-4d7b-80f0-68e0ee5daddb
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.ne1.yahoo.com with HTTP; Sun, 25 Jan 2026 14:07:48 +0000
Received: by hermes--production-bf1-7b565c5b6f-dj684 (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 76b9d4156ecdc37b8358ce9151494812;
          Sun, 25 Jan 2026 14:07:45 +0000 (UTC)
Message-ID: <73dcf841-9858-4b0d-8f0d-fdfdfdeca7d5@Verizon.net>
Date: Sun, 25 Jan 2026 09:07:44 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Michael Aramini <M.Aramini@Verizon.net>
Subject: =?UTF-8?Q?man-pages_bug_report_for_=22date=281=29_=E2=80=94_Linux_m?=
 =?UTF-8?Q?anual_page=22?=
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64
References: <73dcf841-9858-4b0d-8f0d-fdfdfdeca7d5.ref@Verizon.net>
X-Mailer: WebService/1.1.24987 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.aol
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.06 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[verizon.net,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[verizon.net:s=a2048];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4932-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[verizon.net:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[Verizon.net];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[M.Aramini@Verizon.net,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,man7.org:url]
X-Rspamd-Queue-Id: 46B8480EE8
X-Rspamd-Action: no action

QWxlamFuZHJvLCBldCBhbC4sDQoNClRoaXMgaXMgYSAvbWFuLXBhZ2VzLyBidWcgcmVwb3J0
IGZvciAiZGF0ZSgxKSDigJQgTGludXggbWFudWFsIHBhZ2UiICggDQpodHRwczovL21hbjcu
b3JnL2xpbnV4L21hbi1wYWdlcy9tYW4xL2RhdGUuMS5odG1sICkgcGVydGFpbmluZyB0byAN
CmZvcm1hdHRpbmcgb2YgdGhlIG1hbiBwYWdlLg0KDQpUaGUgbGluZQ0KDQogICAgICAgICpk
YXRlICpbLy11fC0tdXRjfC0tdW5pdmVyc2FsL10gWy9NTUREaGhtbS9bWy9DQy9dL1lZL11b
Ly5zcy9dXQ0KDQpyZXByZXNlbnRlZCBpbiBIVE1MIGFzDQoNCjxiPmRhdGUgPC9iPls8aT4t
dXwtLXV0Y3wtLXVuaXZlcnNhbDwvaT5dIA0KWzxpPk1NRERoaG1tPC9pPltbPGk+Q0M8L2k+
XTxpPllZPC9pPl1bPGk+LnNzPC9pPl1dDQoNCnNob3VsZCwgZm9sbG93aW5nIG1hbiBwYWdl
IGZvcm1hdHRpbmcgc3R5bGUsIGJlIGZvcm1hdHRlZA0KDQogICAgICAgICpkYXRlICpbKi11
KnwqLS11dGMqfCotLXVuaXZlcnNhbCpdIFsvTU1ERGhobW0vW1svQ0MvXS9ZWS9dWyouKi9z
cy9dXQ0KDQpyZXByZXNlbnRlZCBpbiBIVE1MIGFzDQoNCjxiPmRhdGUgPC9iPls8Yi11PC9i
Pnw8Yj4tLXV0YzwvYj58PGI+LS11bml2ZXJzYWw8L2I+XSANCls8aT5NTUREaGhtbTwvaT5b
WzxpPkNDPC9pPl08aT5ZWTwvaT5dWzxiPi48L2I+PGk+c3M8L2k+XV0NCg0KSS5lLiB0aGUg
IiotdSoiLCAiKi0tdXRjKiIsICIqLS11bml2ZXJzYWwqIiwgYW5kIGRlY2ltYWwgcG9pbnQg
c2hvdWxkIGJlIA0KKCpub24qLWl0YWxpYykgKmJvbGQqwqBhcyB0aGV5IGFyZSBhcmUgbm90
IHZhcmlhYmxlcywgYnV0IGFyZSBwb3RlbnRpYWxseSANCnZlcmJhdGltIHRleHQgb24gdGhl
IGNvbW1hbmQgbGluZS7CoCBBbHNvLCB0aGUgdmVydGljYWwgYmFycyBhcmUgc3ludGF4IA0K
c3ltYm9scywgd2hpY2ggYXJlIG5laXRoZXIgdmFyaWFibGVzIG5vciB2ZXJiYXRpbSB0ZXh0
LCB0aHVzIHNob3VsZCBiZSANCmluIHJlZ3VsYXIvcm9tYW4gdHlwZWZhY2UsICpub3QqwqBp
dGFsaWMgKG5vciBib2xkKS4NCg0KLU1pY2hhZWwNCg0K

