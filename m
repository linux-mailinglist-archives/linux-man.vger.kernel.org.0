Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02FB51F1731
	for <lists+linux-man@lfdr.de>; Mon,  8 Jun 2020 13:04:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729371AbgFHLEa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Jun 2020 07:04:30 -0400
Received: from plockton.cent.gla.ac.uk ([130.209.16.75]:57799 "EHLO
        plockton.cent.gla.ac.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726202AbgFHLE3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Jun 2020 07:04:29 -0400
Received: from tmpvpnr180-169.cent.gla.ac.uk ([172.20.180.169] helo=Johns-MacBook-Pro.local)
        by plockton.cent.gla.ac.uk with smtp (Exim 4.72)
        (envelope-from <John.W.Marshall@glasgow.ac.uk>)
        id 1jiFZl-00076c-Mw; Mon, 08 Jun 2020 12:04:23 +0100
Date:   Mon, 8 Jun 2020 12:04:16 +0100
From:   John Marshall <John.W.Marshall@glasgow.ac.uk>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [patch] random.3: wfix: RAND_MAX is for rand(3)
Message-ID: <20200608110416.GA21314@Johns-MacBook-Pro.local>
References: <02185B3C-F6E5-4674-BB34-E549E04C5B37@glasgow.ac.uk>
 <627c601ec03b4da9b1ce98ee0e61a6ba@bfs.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <627c601ec03b4da9b1ce98ee0e61a6ba@bfs.de>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

POSIX fixes random()'s range at 2^31-1; RAND_MAX may be smaller on some
platforms (even though with glibc or musl on Linux they are the same).
---

On Sat, Jun 06, 2020 at 12:45:58PM +0000, Walter Harms wrote:
> that RAND_MAX is 2^31-1 in some cases does not matter. IMHO
> it is wrong to mention RAND_MAX in the random page. it can
> simply be replaced with (2**31-1)

Thanks for confirming, Walter. I forgot to mention I was happy to
provide a patch -- suggested fix in this git-format-patch message.

    John

 man3/random.3 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man3/random.3 b/man3/random.3
index 76b076f42..e3550f802 100644
--- a/man3/random.3
+++ b/man3/random.3
@@ -69,7 +69,7 @@ The
 function uses a nonlinear additive feedback random
 number generator employing a default table of size 31 long integers to
 return successive pseudo-random numbers in
-the range from 0 to \fBRAND_MAX\fR.
+the range from 0 to 2^31\ \-\ 1.
 The period of this random number generator is very large, approximately
 .IR "16\ *\ ((2^31)\ \-\ 1)" .
 .PP
@@ -125,7 +125,9 @@ or be the result of a previous call of
 The
 .BR random ()
 function returns a value between 0 and
-.BR RAND_MAX .
+.BR INT32_MAX ,
+i.e.,
+.IR "(2^31)\ \-\ 1" .
 The
 .BR srandom ()
 function returns no value.
-- 
2.18.2

