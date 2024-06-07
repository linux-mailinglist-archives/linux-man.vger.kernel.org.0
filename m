Return-Path: <linux-man+bounces-1050-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA617900E13
	for <lists+linux-man@lfdr.de>; Sat,  8 Jun 2024 00:31:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 87B0EB22410
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 22:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61F1613DDCA;
	Fri,  7 Jun 2024 22:31:10 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail.ekdawn.com (mail.ekdawn.com [159.69.120.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99233B64E
	for <linux-man@vger.kernel.org>; Fri,  7 Jun 2024 22:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.69.120.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717799470; cv=none; b=W3KFXtd/3hU1x4YTtWjtTWGVmzmqkFCjhRV0Y0PMKR5IS5qIaMFYGDURahl2iK1N85cq8JOyDjniqdR9tdwE2cJV/N9+GDV44zQmxWYi+3l0oWhh9bsXR3E7BhIz3FJT2sa6102TaApabj8HmO764sxoF/92K/Ty1JOeH6kBRGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717799470; c=relaxed/simple;
	bh=oEVPS20x2WaM89t/zjiwHXh7m0c6Cr2zqeelYa3lUK8=;
	h=Content-Type:Message-ID:Date:MIME-Version:Subject:From:To:Cc:
	 References:In-Reply-To; b=sVM4izTGaIyLJET0XhIqOzm057xVZjkfDu9JgvXVS6itgPLDQttUyHMy+4t8dQct48TW9pfcska/5Mtobwo8hY+6I+F2zfNlYIUGqT47P+UDTtR0BQvnEVP7AGuaAFrJ2lXhUgqnKErx3kasTfZCRXvdhO+mCC2dTrEKbwhqOow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=horse64.org; spf=pass smtp.mailfrom=horse64.org; arc=none smtp.client-ip=159.69.120.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=horse64.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=horse64.org
Received: from [10.42.0.97] (dynamic-176-007-192-159.176.7.pool.telefonica.de [176.7.192.159])
	by mail.ekdawn.com (Postfix) with ESMTPSA id 61C94185CBA;
	Fri,  7 Jun 2024 22:22:07 +0000 (UTC)
Content-Type: multipart/mixed; boundary="------------iJloDNel0WAk20cMjDaMv18O"
Message-ID: <26bb3fce-6bed-452b-bf0e-5365f2bc7fa1@horse64.org>
Date: Sat, 8 Jun 2024 00:23:11 +0200
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Suggestion for clarifications on "man 5 proc" page regarding
 /proc/[pid]/self race conditions
From: ellie <el@horse64.org>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org, Petr Gajdos <pgajdos@suse.cz>
References: <e170ffa6-986a-4e55-9d44-27d7d7520151@horse64.org>
Content-Language: en-US
In-Reply-To: <e170ffa6-986a-4e55-9d44-27d7d7520151@horse64.org>

This is a multi-part message in MIME format.
--------------iJloDNel0WAk20cMjDaMv18O
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Alejandro Colomar,

I finally wrote a patch against the latest man pages, see file attached. 
  Hopefully this is in a format that allows you to integrate it well.

Some quick notes:

1. The "make" process aborted with an error, I couldn't use it to 
verify. However, pandoc seems to think my formatting is correct.

2. I still don't know if open("/proc/self/exe") has any internal race 
conditions on rename, like any more regular symlink. My text simply 
assumes it doesn't. Maybe some expert might want to double-check?

3. You can freely use my patch, no attribution needed. However, if 
source info is desired, you can supply "Ellie <el@horse64.org>" for that.

Regards,

Ellie

PS: The error that "make" gave me was this one, in case anybody finds 
this useful: "TROFF .tmp/man/man2/s390_sthyi.2.cat.set
troff:.tmp/man/man2/s390_sthyi.2:124: warning [p 2, 1.8i]: cannot adjust 
line"

On 12/12/23 9:47 AM, ellie wrote:
> Dear Alejandro Colomar,
> 
> I hope I'm emailing this to the correct place, I found this contact 
> information on https://man7.org/mtk/contact.html regarding man page 
> feedback:
> 
> I'm suggesting that the "man 5 proc" page is expanded with a section 
> clarifying /proc/[pid]/self race conditions, I described details and 
> even made a text suggestion here:
> 
> https://bugzilla.suse.com/show_bug.cgi?id=1216352
> 
> (The text suggestion might be wrong, however, since I don't actually 
> know what the exact technical state of this is.)
> 
> Regards,
> 
> ellie
--------------iJloDNel0WAk20cMjDaMv18O
Content-Type: text/x-patch; charset=UTF-8; name="man.patch"
Content-Disposition: attachment; filename="man.patch"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL21hbi9tYW41L3Byb2MuNSBiL21hbi9tYW41L3Byb2MuNQppbmRleCBk
M2JjMjhmZjAuLjEyZDNkMDZiOCAxMDA2NDQKLS0tIGEvbWFuL21hbjUvcHJvYy41CisrKyBi
L21hbi9tYW41L3Byb2MuNQpAQCAtMTY4LDcgKzE2OCwxMCBAQCB0byB2aWV3IHRoZSBjb250
ZW50cyBvZgogV2hlbiBhIHByb2Nlc3MgYWNjZXNzZXMgdGhpcyBtYWdpYyBzeW1ib2xpYyBs
aW5rLAogaXQgcmVzb2x2ZXMgdG8gdGhlIHByb2Nlc3MncyBvd24KIC5JUiAvcHJvYy8gcGlk
Ci1kaXJlY3RvcnkuCitkaXJlY3RvcnkuIEZvciBub3RlcyBvbiB0aGUgdGhyZWFkLXNhZmV0
eSBvZgorLkkgL3Byb2Mvc2VsZi9leGUsCitjaGVjaworLkJSIHByb2NfcGlkX2V4ZSAoNSku
CiAuVFAKIC5JIC9wcm9jL3RocmVhZFwtc2VsZgogV2hlbiBhIHRocmVhZCBhY2Nlc3NlcyB0
aGlzIG1hZ2ljIHN5bWJvbGljIGxpbmssCmRpZmYgLS1naXQgYS9tYW4vbWFuNS9wcm9jX3Bp
ZF9leGUuNSBiL21hbi9tYW41L3Byb2NfcGlkX2V4ZS41CmluZGV4IGUzMDg2NzdmMS4uYWE4
Y2RkZDcwIDEwMDY0NAotLS0gYS9tYW4vbWFuNS9wcm9jX3BpZF9leGUuNQorKysgYi9tYW4v
bWFuNS9wcm9jX3BpZF9leGUuNQpAQCAtNTUsNSArNTUsMjIgQEAgTUZNLCBldGMuIGRyaXZl
cykgbWlub3IgMDEgKGZpcnN0IHBhcnRpdGlvbiBvbiB0aGUgZmlyc3QgZHJpdmUpLgogd2l0
aCB0aGUKIC5JIFwtaW51bQogb3B0aW9uIGNhbiBiZSB1c2VkIHRvIGxvY2F0ZSB0aGUgZmls
ZS4KKy5TUyBTYWZlbHkgdXNpbmcgcHJvYy9zZWxmL2V4ZQorVGhlcmUgaXMgYSBjb21tb24g
cHJvZ3JhbW1pbmcgbWlzdGFrZSBvZiBmaXJzdCB1c2luZworLklSIHJlYWRsaW5rKCIvcHJv
Yy9zZWxmL2V4ZSIpCit0byBvYnRhaW4gYSBwcm9ncmFtJ3Mgb3duIGJpbmFyeSwgYW5kIHRo
ZW4gdXNpbmcKKy5JUiBvcGVuKCkKK29uIHRoZSByZXN1bHRpbmcgcGF0aCBzdHJpbmcuIElu
IG1hbnkgc2NlbmFyaW9zIHRoaXMgaXMgdW5zYWZlLCBzaW5jZQorYmV0d2VlbiB0aGUgdHdv
IGNhbGxzIHRoZSBiaW5hcnkgbWF5IGJlIHJlbmFtZWQgYW5kIHRoZW4KKy5JUiBvcGVuKCkK
K3dvdWxkIGFjY2VzcyBhbiB1bnJlbGF0ZWQgZmlsZS4KKy5QCitUbyBhdm9pZCB0aGlzIHBp
dGZhbGwsIGRpcmVjdGx5IHVzZQorLklSIG9wZW4oIi9wcm9jL3NlbGYvZXhlIikKK3dpdGhv
dXQgb2J0YWluaW5nIHRoZSBmaWxlc3lzdGVtIHBhdGggZmlyc3QuIFNpbmNlCisuSVIgL3By
b2Mvc2VsZi9leGUKK2lzIHNwZWNpYWwgYW5kIG5vdCBhIHJlZ3VsYXIgc3ltbGluaywgdGhp
cyBvcGVucyB0aGUgZmlsZSBkaXJlY3RseQord2l0aG91dCBldmVyIGludm9sdmluZyB0aGUg
ZmlsZXN5c3RlbSBwYXRoLiBUaGlzIGF2b2lkcyBhbnkgcmFjZQorY29uZGl0aW9ucy4KIC5T
SCBTRUUgQUxTTwogLkJSIHByb2MgKDUpCg==

--------------iJloDNel0WAk20cMjDaMv18O--

