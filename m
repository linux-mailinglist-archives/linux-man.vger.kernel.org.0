Return-Path: <linux-man+bounces-2656-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA70A736E5
	for <lists+linux-man@lfdr.de>; Thu, 27 Mar 2025 17:35:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 013D91894374
	for <lists+linux-man@lfdr.de>; Thu, 27 Mar 2025 16:35:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4A5B1991BF;
	Thu, 27 Mar 2025 16:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=web.de header.i=radisson97@web.de header.b="mfEfo60O"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.web.de (mout.web.de [217.72.192.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F59E19ADBA
	for <linux-man@vger.kernel.org>; Thu, 27 Mar 2025 16:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.72.192.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743093337; cv=none; b=pJjR6IludQE7vOuNWWxY+5BZjYsxqem/PqbMp/OHnBH1nfuZBUsJypp1YB7HBtTkzjsVFHeZSZ0zQoaOME7T8BgoDcmYe54fSSlm4hF0jw/mezWl4PG0C1WG8AXcERjfkN6KyngPfFtxn9VNj1W9s2kEotXegfR8ztiqo/p3Wmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743093337; c=relaxed/simple;
	bh=ZwbgT+Ev0vbDlN5lCBa/eGBPAtw3M+s0bpg86AtihMo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FSMhCPPle9b8sA3q/Ic4kT6qYdB+OiFlMOtShrzmVyXEbA537M7xxE9iMp4ehjzNbw4CMnMl1x2WvgxaCgiyWcFoxhQOH33y2Ts+QWN1Wn+BXLaihn+gcA2SasrfZFPYf1EcW58DpwXNukg4uM1HB0VQyI8f7lm1X81dSLOnj+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=web.de; spf=pass smtp.mailfrom=web.de; dkim=pass (2048-bit key) header.d=web.de header.i=radisson97@web.de header.b=mfEfo60O; arc=none smtp.client-ip=217.72.192.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=web.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1743093322; x=1743698122; i=radisson97@web.de;
	bh=Cc94sF2vWNljg22InbksnuNo0pGb0Zrx5tznozgJg6k=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=mfEfo60OD+eW8ZGUARlodzKQU+VkpXTSjf3M0g6D1u4+3CEA1Iuh15vFbVZwNp3n
	 XvABOZqUZhuOIzphurHPmGHeOK5aE3t2WqLILkxuIYRZknsSPOJS19qkIyHiiXLgQ
	 foz7NMCxxDN4IG8rjph5iV4Lx/KfSTOEUefzg3AT36inhLbmc7gkiBZUo4PZzipVy
	 WXPKiKPZz7eqjcontrznK66Mt+AfAHLRg9QUfqMV4NG9YTHpqNuJ7GydBieGq1Z0R
	 G5urN39qwnR65ym1GwUDb+JPGRLwS4E/YNaP3pwMgiB3w5i2/n6XHeSpw0FL8W2tQ
	 V7rJkhHivT6nadHRkA==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.40] ([90.153.82.83]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MpU1u-1tLPvR46BQ-00q7J9; Thu, 27
 Mar 2025 17:35:22 +0100
Message-ID: <86f7516b-ba85-4737-9a63-951aabf3f681@web.de>
Date: Thu, 27 Mar 2025 17:35:21 +0100
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
From: Peter Radisson <radisson97@web.de>
In-Reply-To: <ryuuydac7ybjw4pxiqzrjokcwvds3a6ezbjdi6h5fbz7zbr5d7@cqk5eio4lyrh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:jIM17DP8Lq+fdrLxkB7aBXr2NGjnT6x11uaaly/DzQnwJqtc0cS
 OpUF9AR/V+5+6TQVKO8jkQsIrhM1UVMQLtdiIpJly2L0eziYnJoq4sv1BFLORHciyw0S1hJ
 WqzX50Q748GxzJN4D/pk/tBPKAcZHToxw1pXypBN1RhIWVwqDKbCQb0jySBeRpvwiFQnXfZ
 WGvHR1hnhcguYE8j17lcA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:uIkW+6w8d5w=;3chqSJNqJAJiFPY5iQwNudJGrrh
 OnZB/rwe7Lw6F7mDA/7sufIVNaIFelNQ6xIDCXOBDKQsg6tMuCZdQKzm60TVVNEd9bXqbRZjg
 W9bVkONPQxbKnc99vJ7yzGi2ZvZohl2dtxaK6QHtx/YPxeB/KuwWE2TxVPCQ5fmWgog9htO6b
 VsKt91dnhW/dTuGUwTdHYyKFPJKsAmYczWE5AWZaLoY7D6u4ACFOUytFsKqlUQA5Jc1n1eyRs
 5Z0eg1+15EZJqnZGq0saKTxO42VUSmdruClYD7ytIXV4X+f890L70WTVK3WdqWRMw1VhdUymQ
 Y1NVawQtQ9kuuLJ8941Fu2gA3oGH8HvODmtVBcuy7ILcFDlq8S+XhFZg4YF/W05sHdhUw/TgT
 KNEheSf0NOPFH4HQlWGOM3gJJFgjoABbI4yFs2Eeb+GuNdR+P6a4SIIUgglNQ4h0yPKWnjlzb
 5DC4HecnQCS22aKJ1JOGYNI5+Yy7BvqV+yN3SiOTA/AsfAjpFpdJyYeo54OHdbdC5nNAi3s6j
 mx/IGKhqeCnmQtrwxrU+QT4943KDi/ZBXPjkCarv6ff6G3koW0alxeYtXPsSBYzQAW/pn+r/I
 R6UrnVaDyvyuz3cL6pGEDR3XNZrPqmGncDG+6f05S3FTxdUdPrIdAFtfNMT9crSJNd5isf17M
 SZsCatjDDIhUnjvYdcKyHvR1K/WAdZRkN/BWKMatVAuTDA8yfeoTenAPvv2wJRodYCgobPEAc
 Wg/PMqKsZFRxKhcZc3ONBt4+++1yraFka6EGuxyBWVSTsspgYKV7YvzMeOT4J1K6wU0tcKHJ+
 BbniC4Kb3KpzR5kB/7SShmkTB2nAzNQRCJ0AgNpWMXrNkKs7E7rcCq9lTzulMEQfuHJ9OtQcC
 gBt6jKahcrMxA7vabsLP5t1ubYTnOlyXYVNtY7SCkMcVc+zEjiRMky+hiwwlDCMOcZqc1K4Qh
 Y+hWLQPprN/v0dk54nbrGkGpwIJbuCdconoccIUi/TsCwLTfdDzyH1bfp6pVi+RNGtI4W/t+U
 61Z2mBJl+nsZnNBTjaV6zn6QhjoAoitTln/dOwuROjv92Gl6TSMvD+5kbkv5zDMfHas99tg8S
 jHcucEUg9uTubBJbwJ0+Xl2CN33p5HHbrQ2oQVlqZqFOyW2xJ3QzKPR57vjrqan7hbYwcY5+L
 gWd6ecJDYPl3H4oglDM5ZDydZY++jQI7mJmOCRkZu542xz7OBrquEV7eEZx3DvKr8uV0jTVqd
 g/vY6f6ZhMc77mUDWQT4bsBmtowLeaqzYO0CPx+LKrbdI59NdU9cDlyLYLG9QmiCzvdA3ap2/
 7ULJHLpwFkoR0C911LhL0oBZ24pU/pGo+fE4cRAWSuOKwYxtGSn5wptuK5q+jZCOJNS3WC/Xu
 Vr3g0+kgdE631FlSpajECW2+WCpvOr3I9TLFIok6ek7tkp0QgFq4qBTW9RGCSG/pFW3ioszlP
 b7mvL0w==

V2:
* removed 1 empty line
* and changed wording to "content of" to make clear *addrlen is used.

To replicate the problem:

// intended use
struct sockaddr_in  sock_out;
int slen=3Dsizeof(sock_out); //socklen_t
recv_len =3D recvfrom(s, buf, BUFLEN, 0, (struct sockaddr *) &sock_out,
&slen);

// error case
struct sockaddr_in  sock_out;
int slen=3D1;
recv_len =3D recvfrom(s, buf, BUFLEN, 0, (struct sockaddr *) &sock_out,
&slen);

funfact: this escapes the error handling in the linux kernel (no crash)
set slen=3D-1 and you get EINVAL.

hope that helps.

 From 056b50b50dca9f08d203d1d56fdcb6e84d228dba Mon Sep 17 00:00:00 2001
From: Peter Radisson <--show-origin>
Date: Thu, 27 Mar 2025 17:05:51 +0100
Subject: [PATCH] Be more verbose about recvfrom(2) error handling

Signed-off-by: Peter Radisson <--show-origin>
=2D--
  man2/recv.2 | 16 ++++++++++++++++
  1 file changed, 16 insertions(+)

diff --git a/man2/recv.2 b/man2/recv.2
index 2659957a6..413c42271 100644
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
+is less than null the call will return with
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




