Return-Path: <linux-man+bounces-68-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A732C7EA60F
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 23:28:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF7E31C20957
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 22:28:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C7A33B282;
	Mon, 13 Nov 2023 22:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="ccjEZAbu"
X-Original-To: linux-man@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0BC22EF6
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 22:27:56 +0000 (UTC)
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B553A10C
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 14:27:55 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 6A3D93C011BD7;
	Mon, 13 Nov 2023 14:27:55 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id KA23D-cafjWB; Mon, 13 Nov 2023 14:27:55 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 21AEA3C011BD8;
	Mon, 13 Nov 2023 14:27:55 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 21AEA3C011BD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1699914475;
	bh=u7LA6XL+6+LWNhV/rUepU90+HlELM0e0V6bqi32+t8w=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=ccjEZAbud4SzhcGuBsgRnqZUZS/lLDjVzuK2BM/JsScCSn10QKcQ+8cq8F0ohqJYH
	 pOchEf2vMP79+OTYvzBQN+bqlZGa1kJjKIB4qRzTQCSe/o8rgD4Nf8273zIPA3bvdf
	 LqOfepYP+uWMEz7Op0A0xRzA+u+rjMiMa72aIti/T3BQnqzu6MBWrOISxOH+ebSZnX
	 6A3cfVTbpvz125qNHcIB4ug8zYouXPUEhKSFy9Kj435R5k4pcmiR2LNkR9aiLX1LVL
	 571o7CjvbCNv7Pa8Ua7CtO6r7uFYjcNL6TzYrmzmOG/YxVFEdwLF1tQmIeITx1FSR/
	 34whi4LW98Aaw==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
	by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id uBshZZySnlZR; Mon, 13 Nov 2023 14:27:55 -0800 (PST)
Received: from [131.179.64.200] (Penguin.CS.UCLA.EDU [131.179.64.200])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 07EA33C011BD7;
	Mon, 13 Nov 2023 14:27:55 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------dRnKgclA0fmNbEHPQplGtto3"
Message-ID: <9292717d-1a77-40af-bef8-49a05e93c9b9@cs.ucla.edu>
Date: Mon, 13 Nov 2023 14:27:51 -0800
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] string.3 fixes
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <20231112235218.80195-1-eggert@cs.ucla.edu>
 <20231112235218.80195-3-eggert@cs.ucla.edu> <ZVFzcACjZYkjDOAZ@debian>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <ZVFzcACjZYkjDOAZ@debian>

This is a multi-part message in MIME format.
--------------dRnKgclA0fmNbEHPQplGtto3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/12/23 16:53, Alejandro Colomar wrote:
> I'm not convinced by the array wording, as it could be understood as
> doing this:
> 
> 	char d[3], s[3] = {'a', '\0', 'b'};
> 
> 	strncpy(d, s, 3);  // "a\0b"?  Or maybe "ab\0"?
> 
> Did it copy the non-null byte 'b'?

OK, let's fix that confusion by saying it copies "leading non-null 
bytes", not merely "non-null bytes". Please see attached.
--------------dRnKgclA0fmNbEHPQplGtto3
Content-Type: text/x-patch; charset=UTF-8; name="0001-string.3-fixes.patch"
Content-Disposition: attachment; filename="0001-string.3-fixes.patch"
Content-Transfer-Encoding: base64

RnJvbSBhYzEwNDczOGI4YjEzMTU5MjcxYzQwYTg2MzQxZjg3MWZhMjYwZTMzIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBQYXVsIEVnZ2VydCA8ZWdnZXJ0QGNzLnVjbGEuZWR1
PgpEYXRlOiBNb24sIDEzIE5vdiAyMDIzIDE0OjI2OjQyIC0wODAwClN1YmplY3Q6IFtQQVRD
SF0gc3RyaW5nLjMgZml4ZXMKTUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiB0ZXh0
L3BsYWluOyBjaGFyc2V0PVVURi04CkNvbnRlbnQtVHJhbnNmZXItRW5jb2Rpbmc6IDhiaXQK
ClNheSAic2l6ZSIgbm90ICJ3aWR0aCIgZm9yIGJ5dGUgY291bnRzOyAid2lkdGgiIGlzIGZv
ciB0aGUgbnVtYmVyCm9mIGJpdHMgaW4gYSB3b3JkLiAgU2F5ICJsZWFkaW5nIiB0byBtYWtl
IGl0IGNsZWFyIHdlIGRvbuKAmXQgY2FyZQphYm91dCB3aGF0IHRoZSBzb3VyY2UgY29udGFp
bnMsIGFmdGVyIGl0cyBmaXJzdCBudWxsIGJ5dGUuCi0tLQogbWFuMy9zdHJpbmcuMyB8IDIg
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL21hbjMvc3RyaW5nLjMgYi9tYW4zL3N0cmluZy4zCmluZGV4IDRjMzc0YTdk
Zi4uMDhiMDUwYjE3IDEwMDY0NAotLS0gYS9tYW4zL3N0cmluZy4zCisrKyBiL21hbjMvc3Ry
aW5nLjMKQEAgLTE4NSw3ICsxODUsNyBAQCBieXRlcyB0bwogY29uc3QgY2hhciAiIHNyYyAi
W3Jlc3RyaWN0IC4iIG4gXSwKIC5CSSAiICAgICAgIHNpemVfdCAiIG4gKTsKIC5maQotRmls
bCBhIGZpeGVkLXdpZHRoIGJ1ZmZlciB3aXRoIG5vbi1udWxsIGJ5dGVzIGZyb20gYSBzb3Vy
Y2Ugc3RyaW5nLAorRmlsbCBhIGZpeGVkLXNpemUgYnVmZmVyIHdpdGggbGVhZGluZyBub24t
bnVsbCBieXRlcyBmcm9tIGEgc291cmNlIGFycmF5LAogcGFkZGluZyB3aXRoIG51bGwgYnl0
ZXMgYXMgbmVlZGVkLgogLlNIIERFU0NSSVBUSU9OCiBUaGUgc3RyaW5nIGZ1bmN0aW9ucyBw
ZXJmb3JtIG9wZXJhdGlvbnMgb24gbnVsbC10ZXJtaW5hdGVkCi0tIAoyLjQxLjAKCg==

--------------dRnKgclA0fmNbEHPQplGtto3--

