Return-Path: <linux-man+bounces-1538-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB04D93DF5D
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 14:37:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B61C11C20E8A
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 12:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CC5580C0A;
	Sat, 27 Jul 2024 12:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1EbqBwT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF75357CB1
	for <linux-man@vger.kernel.org>; Sat, 27 Jul 2024 12:36:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722083817; cv=none; b=CQjvG5JFXaHGmKsAPXof7NYMZZdPGqXej+BTQEfDe+WinWooX4Gsstvd1Z/Ct8ptJkWymvlXUgoimYGuJW5SQsQaDPIdnPc9Wr6KlpbEJTlM4oXeOeuz61lHooen9s0TiGN4ZdnaPNsK2qtofwEwDZCHzH0WOPWSvCKVcmODsFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722083817; c=relaxed/simple;
	bh=qrtsotyR8ZlML68xE6MxTqpGaPto3k1t40uhoKl0XTo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=egej2C6SGDe4IJ25Nbq8uOzYvYjFC31Ch3mijf822pBQs1mEYCnWRqRhobwFWq7Pip4AfLBDCQoxu62olcOQf57unVDNT56nONFoOGVdOI1iecmahCpPxVnoNsBA+dZMx2JyRVxYfsvhuz0QfqfKuCHxd4A02NkjW/1akaI+72s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1EbqBwT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B8EC32781;
	Sat, 27 Jul 2024 12:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722083816;
	bh=qrtsotyR8ZlML68xE6MxTqpGaPto3k1t40uhoKl0XTo=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=t1EbqBwTLBDFi/yVOVMj7wmh1HCRyMWOaxNMrvtoBcJX5BkK76vwUXFcuhOttDS60
	 uH4PZcTfFRGduuYMOVv0BX77hDOOA7xauJCoiaMKExwH+5Cn3sYcdnssggEpEUcVlH
	 8mSwKlsIhVMIYWNl876+PWh6Xrh2yYM2DnIq8xH34hjBEyyJ7DXczSFJN8mhWcX+Bu
	 yvr70OfWRYBCkUXg+07x6ciH+PXnWwqVSWAn21UsJlvW6+k1Q0P0kdDv03KNz8cV/p
	 dG8EyMmkfELTzEqnTwtBZNkOfErcOGvrDpLZ9xfu0wSCVlIe5xqpuKzTKi/V6NrDKp
	 aI+BDP9bQfLfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69ACFC3DA61;
	Sat, 27 Jul 2024 12:36:56 +0000 (UTC)
From: Andy Pan via B4 Relay <devnull+i.andypan.me@kernel.org>
Date: Sat, 27 Jul 2024 12:36:29 +0000
Subject: [PATCH] epoll.7: clarify the event distribution under
 edge-triggered mode
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240727-epoll-et-desc-v1-1-390bafc678b9@andypan.me>
X-B4-Tracking: v=1; b=H4sIAMzppGYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDcyNz3dSC/Jwc3dQS3ZTU4mRdA5PURMtEU0uDNOMkJaCegqLUtMwKsHn
 RsbW1AAqhIdtfAAAA
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Andy Pan <i@andypan.me>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1722083815; l=3052;
 i=i@andypan.me; s=20240727; h=from:subject:message-id;
 bh=miESzhNwWV01ZEHKTDwf+XPrSXJ0aYIfNGjXrMdNlSg=;
 b=VsuknDyrQaPnnlZyYUfTjVrcNQ6S8fIm61t9Xlks/pSxd1pqm4dgd6Vv6hTd1g68YkEYBp60I
 rw9GYFAMnB0AYpaZzUwS9JWCT6mpqSSr3ZNIiovABfY5Oipv0bcfjF6
X-Developer-Key: i=i@andypan.me; a=ed25519;
 pk=ZLGY5dzAGPy8bpSKbl9Jfyp/Ud0eac0BY5cKedQXMcw=
X-Endpoint-Received: by B4 Relay for i@andypan.me/20240727 with auth_id=190
X-Original-From: Andy Pan <i@andypan.me>
Reply-To: i@andypan.me

From: Andy Pan <i@andypan.me>



---
For the moment, the edge-triggered epoll generates an event for each
receipt of a chunk of data, that is to say, epoll_wait() will return
and tell us a monitored file descriptor is ready whenever there is a
new activity on that FD since we were last informed about that FD.
This is not a real _edge_ implementation for epoll, but it's been
working this way for years and plenty of projects are relying on it. 

There are several renowned open-source projects relying on this feature
for notification function (with eventfd), such as nginx [1], netty [2],
tokio [3], libevent [4], ect. [5] These projects are widely used in today's
Internet infrastructures. Thus, changing this behavior of epoll ET will
fundamentally break them and cause a significant negative impact.
Linux has changed it for pipe before [6], breaking some Android libraries,
which had got "reverted" somehow. [7] [8]

Nevertheless, the paragraph in the manual pages describing this
characteristic of epoll ET seems ambiguous, I think a more explict
sentence should be used to clarify it. We're improving the notification
mechanism for libuv recently by exploiting this feature with eventfd,
which brings us a significant performance boost. [9]

Therefore, we (as well as the maintainers of nginx, netty, tokio, etc.)
would have a sense of security to build an enhanced notification function
based on this feature if there is a guarantee of retaining this implementation
of epoll ET for the backward compatibility in the man pages.

[1]: https://github.com/nginx/nginx/blob/efc6a217b92985a1ee211b6bb7337cd2f62deb90/src/event/modules/ngx_epoll_module.c#L386-L457
[2]: https://github.com/netty/netty/pull/9192
[3]: https://github.com/tokio-rs/mio/blob/309daae21ecb1d46203a7dbc0cf4c80310240cba/src/sys/unix/waker.rs#L111-L143
[4]: https://github.com/libevent/libevent/blob/525f5d0a14c9c103be750f2ca175328c25505ea4/event.c#L2597-L2614
[5]: https://github.com/libuv/libuv/pull/4400#issuecomment-2123798748
[6]: https://lkml.iu.edu/hypermail/linux/kernel/2010.1/04363.html
[7]: https://github.com/torvalds/linux/commit/3a34b13a88caeb2800ab44a4918f230041b37dd9
[8]: https://github.com/torvalds/linux/commit/3b844826b6c6affa80755254da322b017358a2f4
[9]: https://github.com/libuv/libuv/pull/4400#issuecomment-2103232402

Signed-off-by: Andy Pan <i@andypan.me>
---
 man/man7/epoll.7 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man/man7/epoll.7 b/man/man7/epoll.7
index 951500131..361d9db99 100644
--- a/man/man7/epoll.7
+++ b/man/man7/epoll.7
@@ -172,6 +172,7 @@ .SS Level-triggered and edge-triggered
 Since even with edge-triggered
 .BR epoll ,
 multiple events can be generated upon receipt of multiple chunks of data,
+that is, an event will be generated upon each receipt of a chunk of data,
 the caller has the option to specify the
 .B EPOLLONESHOT
 flag, to tell

---
base-commit: cbc0a111e4dceea2037c51098de33e6bc8c16a5c
change-id: 20240727-epoll-et-desc-04ea9a590f3b

Best regards,
-- 
Andy Pan <i@andypan.me>



