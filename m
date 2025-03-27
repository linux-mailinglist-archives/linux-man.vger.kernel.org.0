Return-Path: <linux-man+bounces-2658-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C47E7A73CB1
	for <lists+linux-man@lfdr.de>; Thu, 27 Mar 2025 18:48:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B0EEA3B2EA2
	for <lists+linux-man@lfdr.de>; Thu, 27 Mar 2025 17:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F61B1A3150;
	Thu, 27 Mar 2025 17:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=web.de header.i=radisson97@web.de header.b="FNzOKkxm"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.web.de (mout.web.de [217.72.192.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68339433B1
	for <linux-man@vger.kernel.org>; Thu, 27 Mar 2025 17:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.72.192.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743097675; cv=none; b=ZQSkojaYeIAs40G5AGAVgBhPBk1537Z1+3jnmFYCV4al9trJAdl87PZrjcJM4z7rIcxz0TUYCb+4jQWMWKIXRRRB3XJSTOdkAyT4EkvGZPcbDrajGIwWsL+wizjnttDjQhzqkadLMnjVy8O/g8azORAu0ZRgYOqwMwJIoRrQSAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743097675; c=relaxed/simple;
	bh=LxDrwCORP5aAPcoQ3L28tGnNrp8DNJkgruFBiYvYv7k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g7uN991JCNse03S81vnkOdvizpV/d6RnFHnt58SwXIyQo8N00DDDowFG25Z3qHKfdjBw31lOCggx65B32gXWHj3j0aOLKPBNBR/5LLbG36pLKAxTli6gnANC+od1winH+t7GFI0EDkId/VYofDfk9/lgix6vey24FW66pPDRjtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=web.de; spf=pass smtp.mailfrom=web.de; dkim=pass (2048-bit key) header.d=web.de header.i=radisson97@web.de header.b=FNzOKkxm; arc=none smtp.client-ip=217.72.192.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1743097665; x=1743702465; i=radisson97@web.de;
	bh=Tqlj+dwJCezC1Z0DuovUbFWfR9opxwXfssWGFr2lxaY=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=FNzOKkxmPBDqegc+SibkaN3nATqd8rOAi9LhYutMZUXkGpZ/keqGxgVX6eqpCAEW
	 Ri8crIHzLu0AQftdOgZTR35p/naHVcKAw2W+F7k5b1kCHjJDpZagLzXg2PdduGM2N
	 DkYZmyg7eQw1eF2hyi862yYNmV+0BKh2qCl2jThkOqfYMIxiOgwF0VIywzJN4jJw3
	 5s83Ele376Fmic8mWsOvXLZjq8mnva9sh9D5n/AhUtW28t+Y+MpGHWgP/dWVJiU6y
	 2+hRsQ+FrzpP5FmbOubJUcpADFA1VB47tKYcK48Q/f7gMykp/A16y0KX7cHv1/ckq
	 bW6htIg3qBC5anvHZw==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.40] ([90.153.82.83]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MsJSy-1t9jWF1AqI-00u5wt; Thu, 27
 Mar 2025 18:47:45 +0100
Message-ID: <977a59f6-4e1e-4f7d-996d-8dbcd7a46794@web.de>
Date: Thu, 27 Mar 2025 18:47:44 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: fix: recvfrom() error handling
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
 "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <5449c846-e9ff-4c4c-b161-485da08a578b@web.de>
 <ryuuydac7ybjw4pxiqzrjokcwvds3a6ezbjdi6h5fbz7zbr5d7@cqk5eio4lyrh>
 <86f7516b-ba85-4737-9a63-951aabf3f681@web.de>
 <7cf47smc7ntz2k4rkekbuzehzymi3fnvwybsrn42pqgptm75wg@6s5b6mrwkhfv>
From: Peter Radisson <radisson97@web.de>
In-Reply-To: <7cf47smc7ntz2k4rkekbuzehzymi3fnvwybsrn42pqgptm75wg@6s5b6mrwkhfv>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:D4VM1oHOetwYFvvcQGxLacRZOe5+2b/cJGxjzCEEM8JrUvaO0FS
 MFv1D0Oy5hq4sLM7iGZNS8Oy0o60MUfLxboRBfEIEVASThnZ75ey7bLVgU5rlC792Gu959d
 SgTZ1OuZGXCXkonZ72bi1gf7uUczrMPo2X+Ni/235rZj5cdlj7Sh5FbNET878kCgBsaKyQf
 Kw2Ed7zdIL8SG0bozvbWQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:HPaa3J+jwPg=;xs+oSXCj4eWywFr9dFaHjBE/ibB
 gkjk9oFsbTKKD86QuyWUDqpYMDGrjCccCeBaYCBnlRndB+JNG463jflbDdMq7ssatjcXhSSg8
 v/1RlUfDWKhr/gyclaPBPGmyRkKhf3MOhuraUhWrEWv2sF74RnRHSbmoPCDCEebifAiM/Icx2
 yDm1el6GyR+naNKf8zPBFYgcWRj3YxdYPeNvB+37eKkfVPZLRGbbg2MuwkAGQQ/HXQNzLIgFr
 g4wmA3AuSc4ruKkSXlvp8AMiAvHPO7V83Vkf0k3Vt1t5Ez8sP9rnRQjrH5U2MXZjcoW9XSFgn
 zTR1mMTyhr2q79PE2QEvotNnwQ+Q8G+Kij6gW9dMD6fQJ8kd+POwri/tUpji9J2hYjJDXGZ78
 9B+9xOufJhgVQJsc0vfAdRBr1x1Oq7r8+d9EzLpuXvtUikKqGaKWAZHEvSxZPZdBmfvPX3WwX
 iZE2ctqVIgPBDELc+43OL2p1T0PtreeADclTziLVyRDqAp4VtkYMfSD64y6nBRyY1N6KoBeHD
 41+naB8U8/o4WsXr+nOBgLVbbG/VZl9bKW5q9pXan4CW6H5zDMPPuj8sazzZF+Lu8cKxnpuTz
 U4mGgXhBQSt9dUWMXO6ptUOMzy+MoYdm/ic/vikA98wvX+krI8KdlsoNHtJZpWrtGr3JSK8lV
 GBXlqOtTLEQ5PGCsa/5W9LhBsMiUEnKZl9OcRtLGxHJR5qbT0TSiFMR2NdFdWE5uEbXQncLUU
 MsdH8iHfXCkmsEE7QHlLZmBkajKDaP1he5XEYSdh84MjHsoyq54dzEwpr801iUXf7cz1bDlq0
 BJrgvEw9j44EaPlV9RK5IHaCpbk+lU2yWEISIgwTedcCXzpSJOfLOb1KGgCsdwJSaYivAspe8
 dKrL2xDyhK7Gxm/Z65i1FPcck1yCqZffTPQuJwU1Sx2jg3FmKt5/ziPW/B0CmVOdWb0SY/buH
 XMgsNsKR3ij5UmbBcKWzfTUVyZO4xoJWGDlGVb86ZXntHf4BR0UClG2Shso4Glc2ph32eb4XR
 VXf1v1lPR0k6iEcKKaJs/dZTA0uO6Ogrt8bu4uSI2TZiVYodPOvBb9ERIHv0FjtkPt+gz4mu8
 jk2eZsSOl6VIKu07FvrQKcvJdUI871NMvMmUTQBoogc9QLukmn9w8Q9DlKQgvtMMP0DIw1ia6
 qFA8BMyO3tYEBNjczwyoOGITkYD+TcKGTdxjSwCXc/ZniO6XKfy/9Yk8UshWuMsin9A+2ieHw
 hZNd8TZZmOqqQ8phcSoJR8znWFQq3MPtGaRYbIjnxtyHzdUZ8c8P+jz6kEdUwWn3M2q/nbMjk
 DvAyKrwab2IBgrRGIRRaQm2rhi8T/B2ZhBFc1Wr0BRiMraqOpbjUBSUUSxBm8wWh/IarYa01u
 //NwCIJFAgBgllBtXXqod6TiT5bplF5gvi8hZEgDj/O6sYxEXQVP+nq+dDX8cfMSD9k9OLPPd
 jnAGZyw==



Am 27.03.25 um 18:28 schrieb Alejandro Colomar:
> On Thu, Mar 27, 2025 at 05:35:21PM +0100, Peter Radisson wrote:
>> V2:
>> * removed 1 empty line
>> * and changed wording to "content of" to make clear *addrlen is used.

V3:
* changed wording:
less that null -> negativ

thx for fast reply, unfortunately i noticed an other problem with the
page. I will report in an other mail.

>> To replicate the problem:
>>
>> // intended use
>> struct sockaddr_in  sock_out;
>> int slen=3Dsizeof(sock_out); //socklen_t
>> recv_len =3D recvfrom(s, buf, BUFLEN, 0, (struct sockaddr *) &sock_out,
>> &slen);
>>
>> // error case
>> struct sockaddr_in  sock_out;
>> int slen=3D1;
>> recv_len =3D recvfrom(s, buf, BUFLEN, 0, (struct sockaddr *) &sock_out,
>> &slen);
>>
>> funfact: this escapes the error handling in the linux kernel (no crash)
>> set slen=3D-1 and you get EINVAL.
>>
>> hope that helps.
>>

 From 9f464fde8dd168b71430ca29f631153e3e3fb2e5 Mon Sep 17 00:00:00 2001
From: Peter Radisson <--show-origin>
Date: Thu, 27 Mar 2025 18:39:29 +0100
Subject: [PATCH] Be more verbose about recvfrom(2) error handling

Signed-off-by: Peter Radisson <--show-origin>
=2D--
  man2/recv.2 | 16 ++++++++++++++++
  1 file changed, 16 insertions(+)

diff --git a/man2/recv.2 b/man2/recv.2
index 2659957a6..ba17d03a3 100644
=2D-- a/man2/recv.2
+++ b/man2/recv.2
@@ -293,6 +293,22 @@ The returned address is truncated if the buffer
provided is too small;
  in this case,
  .I addrlen
  will return a value greater than was supplied to the call.
+If
+.I src_addr
+is NULL
+.I addrlen
+will be ignored.
+If
+.I src_addr
+is not NULL and the content of
+.I addrlen
+is negativ the call will return with
+.IR EINVAL .
+If
+.I addrlen
+is less than sizeof struct sockaddr_in the src_addr will
+not be modified.
+
  .PP
  If the caller is not interested in the source address,
  .I src_addr
=2D-
2.35.3



