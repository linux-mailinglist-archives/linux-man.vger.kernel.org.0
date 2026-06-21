Return-Path: <linux-man+bounces-5660-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id t8RrAJELOGqEXQcAu9opvQ
	(envelope-from <linux-man+bounces-5660-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 21 Jun 2026 18:04:33 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0146AB3DE
	for <lists+linux-man@lfdr.de>; Sun, 21 Jun 2026 18:04:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=autistici.org header.s=stigmate header.b=gJJeknrc;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5660-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="linux-man+bounces-5660-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=autistici.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94363301496D
	for <lists+linux-man@lfdr.de>; Sun, 21 Jun 2026 16:00:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C17F267B89;
	Sun, 21 Jun 2026 16:00:26 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from confino.investici.org (confino.investici.org [93.190.126.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6F3227EB9
	for <linux-man@vger.kernel.org>; Sun, 21 Jun 2026 16:00:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782057626; cv=none; b=njozFCx6axMYYlAgTmHG3gJeLQhbRCpO994xqhI+uUwo9RMkiV5YpE20/R3+kc+QbDORijTSkxUP1qJeru+g94eT5AhkkkKUX1OiY4SMOz2u50WSEm/VG5fCG31dh5EtS1bE9SbuoKpvBaiY/PrKx4nFtAoNRk02m752vrPnOMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782057626; c=relaxed/simple;
	bh=irlaoE6kHcRJp0tvY+Sq8ctOqYDD9qmxaKLOMuRU3Ms=;
	h=Message-ID:Subject:From:To:Cc:Date:Content-Type:MIME-Version; b=PbqwjZpdxnzP9Ee8tpLDw9QAj2LimVPIrZSAGRHYkmSiEmCk914Ygvb0aTFnjemWyBejZiIswEW1GmQ64stVEg3bwRf6ldgzsxp05FYwBwlM74Xnt7FIiD+eL+gyCP3e9SsqhbX43SRTEMl4De8nme8TQrKnIvbvG93fTs+lOYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=autistici.org; spf=pass smtp.mailfrom=autistici.org; dkim=pass (1024-bit key) header.d=autistici.org header.i=@autistici.org header.b=gJJeknrc; arc=none smtp.client-ip=93.190.126.19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=autistici.org;
	s=stigmate; t=1782057621;
	bh=irlaoE6kHcRJp0tvY+Sq8ctOqYDD9qmxaKLOMuRU3Ms=;
	h=Subject:From:To:Cc:Date:From;
	b=gJJeknrcHpElt+DyAmg8FVk9DKhiAseLapzlOqp+VMS0tWdqvFIMp0wupYkrs7I6y
	 GzqzBQE108UOvMEGMdK5VsPvmvCLT6oYBrymESKU4Lvizrc09XJNm+pCWMcn+BJgXI
	 n42G/m2IsEYsdxoXBqrH5HiNDqA5sbl9NI8WCWFA=
Received: from mx1.investici.org (unknown [127.0.0.1])
	by confino.investici.org (Postfix) with ESMTP id 4gjwys28Y4z10yL;
	Sun, 21 Jun 2026 16:00:21 +0000 (UTC)
Received: by mx1.investici.org (Postfix) id 4gjwys0TwTz10yH;
	Sun, 21 Jun 2026 16:00:21 +0000 (UTC)
Message-ID: <b096c7e29014c6aaf416ce672684aab569aac341.camel@autistici.org>
Subject: Wrong protocol in IPV6_V6ONLY.2const
From: Phosit <phosit@autistici.org>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Date: Sun, 21 Jun 2026 18:00:20 +0200
Autocrypt: addr=phosit@autistici.org; prefer-encrypt=mutual;
 keydata=mDMEaOthNRYJKwYBBAHaRw8BAQdADtAPAU4SBypg1gqLckPgXhR43A6zCWL1i6fypvLt+
 2S0HVBob3NpdCA8cGhvc2l0QGF1dGlzdGljaS5vcmc+iJkEExYKAEEWIQQ0Vs/wmEsNSG0lMQzJQw
 tgBnHCaAUCaOthNQIbAwUJBaOagAULCQgHAgIiAgYVCgkICwIEFgIDAQIeBwIXgAAKCRDJQwtgBnH
 CaD8WAQC4LE9rhGdpqheBaBO/hvLOtZDAI/yWZHueZbpvk1uX1AEAuUt9Yje9AO/rILAUGoR5YvlH
 8t1Ybo17DVRBb6ITGww=
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-9/TcQuWhNj1ZLY2qEog/"
User-Agent: Evolution 3.56.2-9 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[autistici.org,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[autistici.org:s=stigmate];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[autistici.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-5660-lists,linux-man=lfdr.de];
	FORGED_SENDER(0.00)[phosit@autistici.org,linux-man@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phosit@autistici.org,linux-man@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3D0146AB3DE


--=-9/TcQuWhNj1ZLY2qEog/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In the synopsis of "IPV6_V6ONLY.2const" the function signature uses
`IPPROTO_IP`. When using that the function seems to have no effect. I
think it should state `IPPROTO_IPV6`.

--=-9/TcQuWhNj1ZLY2qEog/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIsEABYKADMWIQQ0Vs/wmEsNSG0lMQzJQwtgBnHCaAUCajgKlBUccGhvc2l0QGF1
dGlzdGljaS5vcmcACgkQyUMLYAZxwmhaMQEA3Si/SyXhDo2ql66cebNC0Nlzkhyx
aHT644XmifV5CLsBALK70yUr+gLUb2BENgZHfOk5g58wW5w1RQUKkF2iDD0P
=UQN3
-----END PGP SIGNATURE-----

--=-9/TcQuWhNj1ZLY2qEog/--

