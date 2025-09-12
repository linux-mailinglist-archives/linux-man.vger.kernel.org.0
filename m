Return-Path: <linux-man+bounces-3860-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3243EB55591
	for <lists+linux-man@lfdr.de>; Fri, 12 Sep 2025 19:46:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D140A7C10B1
	for <lists+linux-man@lfdr.de>; Fri, 12 Sep 2025 17:46:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E9BF1E7660;
	Fri, 12 Sep 2025 17:46:12 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from buffalo.tulip.relay.mailchannels.net (buffalo.tulip.relay.mailchannels.net [23.83.218.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A99E519004E
	for <linux-man@vger.kernel.org>; Fri, 12 Sep 2025 17:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=23.83.218.24
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757699171; cv=pass; b=PDFgJlAM8lpANrJjKWQ7E6SVOXMsL6k2kKtQhVynLbfN2hewnTNiD1jMD3DwzJeQSz8WNChYwnrWulAQzCZSf0SdqEBPdp3FMl5+j6+A8uY0xdSyAl0cGPiu1cJ2PB5s7mo3Oc4rOwkjrqBP45qeNPLyAMYI6/tHIih0rqD83Lw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757699171; c=relaxed/simple;
	bh=ArBvGnAnJFTTaIPqDEBqxLb4H+hzUCoyyffgVnrfc+8=;
	h=Message-ID:Subject:From:To:Date:Content-Type:MIME-Version; b=JAEu/e7+3lUk07N/CvjMhhniVMnBrK3qdwI3+iCCcy5/dw+0d62a/C0bQl2hbxbN10we8hXV9NuaNxKwwx7NpscEkLrI6kzutl+WQ3Rj0koCclXcRS9hspho98u/XKoeP15P+O4X2gHVX6FFhw1bb+T8LI0pDL79eZzi+kedRiM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=scientia.org; spf=pass smtp.mailfrom=scientia.org; arc=pass smtp.client-ip=23.83.218.24
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=scientia.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=scientia.org
X-Sender-Id: instrampxe0y3a|x-authuser|calestyo@scientia.org
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id B50B8167D08;
	Fri, 12 Sep 2025 17:39:53 +0000 (UTC)
Received: from cpanel-007-fra.hostingww.com (trex-blue-3.trex.outbound.svc.cluster.local [100.106.207.49])
	(Authenticated sender: instrampxe0y3a)
	by relay.mailchannels.net (Postfix) with ESMTPA id B52A3167CD1
	for <linux-man@vger.kernel.org>; Fri, 12 Sep 2025 17:39:51 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1757698792; a=rsa-sha256;
	cv=none;
	b=9nOZVpXoIqNYZMLJZprPrEdUJ7u4hPyblWO8X/l0wZIA0XC8jvBtxkqmbKsJE4WO+0/DeJ
	uy9Kj1OFi6Uph2fQOAQ+jZBpQioed5l4RnOdWfq7PR55veuV9QF7LX0XbhedlEFtU4TX4C
	YJ3M0fFgYVJskrQlyNWnN9k4zjLVF6cxTXtVbwtB4MHd7BzQ/h3kNmVBNz6fiiRFqHq7Yj
	iNZIW878DoxkJO54W3u49PjKlpJisLlN9w1haCAQQDMELX1CTSOSl1Fst2fKNHATCBU1cz
	OvvU1bJUAEsazm7bgg6WFGQGPDr+orbU1YkfrlxpBf/fbppWrkBo5ktdJjJ/RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1757698792;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=pRkdTehVQEMv4MigDpayFIsV586/jYoAto9L/VuaSUo=;
	b=BZpNwFYKt4q2ry9I5tmU1Isf9laOwNNwU6+9mLQT/20kZ0B2uAbLjnmiariqgRWvdJVSKw
	QnLwQy6QLSGmUcEj1p+d70CEQzFOAa3APFTI7b1UArTXfuC4Niy6aD5s/Jl7a+nSRnxb7g
	oZC67AfguQoX8160lXwI8xvxUxGBc0uJmDTsKaDguC+vdttXyBuk8AJa66xfpGL1HFRMZD
	/CzK7nYnc75cL+jxyL7aUGCGPrrKkH3QsWHm3fBjPiEpEqzU+GdoOKeDIhsoCGdUd08OIB
	DA8Ehv+dUk2SPt9gzG/PR+ngBnOpDwt0RqpxcMNVfWwiM5oesNvvsO/c5CTFPw==
ARC-Authentication-Results: i=1;
	rspamd-7b5fd646f8-nz2f5;
	auth=pass smtp.auth=instrampxe0y3a smtp.mailfrom=calestyo@scientia.org
X-Sender-Id: instrampxe0y3a|x-authuser|calestyo@scientia.org
X-MC-Relay: Neutral
X-MC-Copy: stored-urls
X-MailChannels-SenderId: instrampxe0y3a|x-authuser|calestyo@scientia.org
X-MailChannels-Auth-Id: instrampxe0y3a
X-Drop-Share: 3806f3cb43987a22_1757698792409_1598896629
X-MC-Loop-Signature: 1757698792409:2193929326
X-MC-Ingress-Time: 1757698792409
Received: from cpanel-007-fra.hostingww.com (cpanel-007-fra.hostingww.com
 [3.69.87.180])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.106.207.49 (trex/7.1.3);
	Fri, 12 Sep 2025 17:39:52 +0000
Received: from ipbcc0feaa.dynamic.kabel-deutschland.de ([188.192.254.170]:63794 helo=heisenberg.fritz.box)
	by cpanel-007-fra.hostingww.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <calestyo@scientia.org>)
	id 1ux7kV-00000007aoG-0JIL
	for linux-man@vger.kernel.org;
	Fri, 12 Sep 2025 17:39:50 +0000
Message-ID: <3b8ab6fa7721a8bedc776bb92f70ad13139a2a5d.camel@scientia.org>
Subject: locale(5): country_post CERT_MAILCODES?
From: Christoph Anton Mitterer <calestyo@scientia.org>
To: linux-man@vger.kernel.org
Date: Fri, 12 Sep 2025 19:39:47 +0200
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+b1 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-AuthUser: calestyo@scientia.org

Hey.

The manpage says:
>   country_post
>     followed by the abbreviation of the country (see CERT_MAILCODES).


I tried to find what these CERT_MAILCODES should be, but found not
single reference.

ISO/IEC TR 14652[0] on page 59 has:
> country_post
> The operand is a string with the abbreviation of the country, used
> for
> postal addresses, for example by the CEPT-MAILCODE codes
> designating countries in Europe. Other abbreviation systems are also
> allowed, and there is no specific way to identify which abbreviation
> system is being used.

And these CEPT mailcodes[1] actually seem to exist.

Maybe the CERT_MAILCODES is just a typo?
Perhaps one should ask someone from glibc, though.


Also, since the field doesn't seem to be *only* these CEPT codes, at
least not according to the TR, one should perhaps write: "for example",
rather than "see")?

Cheers,
Chris.


[0] https://www.open-std.org/jtc1/sc22/wg20/docs/n972-14652ft.pdf
[1] https://www.cept.org/cept/cept-country-codes

