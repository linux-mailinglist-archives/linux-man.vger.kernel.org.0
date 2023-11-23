Return-Path: <linux-man+bounces-156-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7CA7F6685
	for <lists+linux-man@lfdr.de>; Thu, 23 Nov 2023 19:42:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DBE9F1C20EA9
	for <lists+linux-man@lfdr.de>; Thu, 23 Nov 2023 18:42:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41B2324B45;
	Thu, 23 Nov 2023 18:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: linux-man@vger.kernel.org
Received: from smarthost01c.ixn.mail.zen.net.uk (smarthost01c.ixn.mail.zen.net.uk [212.23.1.22])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16053D59
	for <linux-man@vger.kernel.org>; Thu, 23 Nov 2023 10:42:05 -0800 (PST)
Received: from [82.71.22.80] (helo=pip.localnet)
	by smarthost01c.ixn.mail.zen.net.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <deri@chuzzlewit.myzen.co.uk>)
	id 1r6EeK-001vyE-5u;
	Thu, 23 Nov 2023 18:42:04 +0000
From: Deri <deri@chuzzlewit.myzen.co.uk>
To: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Cc: groff@gnu.org
Subject: Re: Optimize script for generating LinuxManBook.pdf
Date: Thu, 23 Nov 2023 18:41:14 +0000
Message-ID: <2818350.Jt13fLt2Sg@pip>
In-Reply-To: <ZV4XNnNlv8OK1B1m@debian>
References: <ZV4XNnNlv8OK1B1m@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-smarthost01c-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80

On Wednesday, 22 November 2023 14:58:56 GMT Alejandro Colomar wrote:
> Hi Deri,
> 
> I've optimized from 18.5 s down to 16.3 s the script, by splitting the
> pipeline with this wrapper (and slightly reducing the perl script to
> just print the pages to stdout).  BTW, now it can be run from any
> directory.  And every step can be debugged by just introducing
> 
> | tee /dev/tty \
> 
> wherever you want to debug.  It's all pushed to master.
> 
> The PDF is now printed to stdout, to avoid hard-coding file names.
> 
> I still need to split a bit more and reduce the longest lines.  How does
> this script look to you?
> 
> Cheers,
> Alex :-)
> 

Hi Alex,

It looks fine, although you have to run the code in 
"prepare_linux_man_book.pl" twice (to avoid using a temporary file). If you 
are going to run preconv it is best to run it first - stops pic spitting out 
loads of warnings. You also dropped one stage in second pass, no pic in the 
pipeline. This may explain part of the speedup you observed. I don't know if 
any of your man pages require pic but they could in the future. The changes I 
would advise are:-

--- a/scripts/LinuxManBook/build_linux_man_book.sh
+++ b/scripts/LinuxManBook/build_linux_man_book.sh
@@ -4,8 +4,8 @@
 
 (
        "$(dirname "$0")"/prepare_linux_man_book.pl "$1" \
-       | pic \
        | preconv \
+       | pic \
        | tbl \
        | eqn -Tpdf \
        | troff -Tpdf -dPDF.EXPORT=1 -dLABEL.REFS=1 -dpaper=a4 \
@@ -16,6 +16,7 @@
        "$(dirname "$0")"/prepare_linux_man_book.pl "$1";
 ) \
 | preconv \
+| pic \
 | tbl \
 | eqn -Tpdf \
 | (

Cheers

Deri




