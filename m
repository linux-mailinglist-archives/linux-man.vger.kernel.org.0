Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C49C70AD99
	for <lists+linux-man@lfdr.de>; Sun, 21 May 2023 13:29:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229634AbjEUL27 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 May 2023 07:28:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232133AbjEUL2i (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 May 2023 07:28:38 -0400
X-Greylist: delayed 178 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 21 May 2023 04:14:51 PDT
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.160])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C41F918B
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 04:14:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1684667497; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=GFSUAUQ8xBfOkuBFzyw23tavLxI+npiSxEWGhznKZPHff+1v/+bGf7cR7F53hqUHWL
    M19PwpzOJpMFWoMpqoWuw0M1rdL1isP52TkRFOmQg1TUKE4FQCFggQP67eeyizFmRZhk
    bNcmjQVLzwBqc4hLLkyOugEycUP+tR+J4mrGfw2jTM+7Ue6zFKE0YPOXEDCZZAiGE2k2
    WgXwxgOhXyXlfz7Mpa8gSpHil7DrY7V//1fWHHzZudnRym/o7AsI6teBQ7wKzQb9ATgD
    iOKb1VCiRXyDw1HbKTQi3WAfo6tTZ3ogGrsdU6TRWCQ6yqziR6os3VcluX72ndu+hfkO
    +l/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1684667497;
    s=strato-dkim-0002; d=strato.com;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=MAxbrL6s4umYAPfWIu2ZWLvyepyEGYw/3DWRxdqjiAo=;
    b=ZxIfE9E4GsBYrEQYISKZ54oNctCw8OZAwPUXL98ywA6hy1ZunjpNjYKexht1AxRWaA
    0VEz+YGJR8bcYYmROMXhP+hvJc9+YBBWi+LAlhBA3+6D27BdHUo5txhAhEp2X69DOJC8
    C78t9dObiBXy21e60CvHqGURp/L+eG/0oXAPK0zkinn+PqxJXeDoVxixnb6E2rnXrjMS
    MkNOrXF8qteciKdvgaAlwZ8+HYXWilydblPp0YxFg5XhV4G42wpCY9R7/qdAI/y+tY40
    P53whL9PaoMxi8JO3czXQdCJaoap6FDMWj3hwfxuY1MD56IqYDXsFlea2TycQbpyYQ+r
    vBPg==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1684667497;
    s=strato-dkim-0002; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=MAxbrL6s4umYAPfWIu2ZWLvyepyEGYw/3DWRxdqjiAo=;
    b=X0MslwyZ5fYdRLb9dFEnY3iGl93xUdGoOjRWSBQjqjvzmg7Du9O9Tgb8sLSPsuenUe
    pxsdhlm3vDzHT5vNNrNgKFn8bKAT1hD/KS9IQ6BBqESzr3dAAwfwqL9rYiKKeyVeki3t
    tuLIept7QMVxWoi68WJqvhgM1ZBvxnMe8s6/H9t11T6hUuZ/eqVj5YtJR5ZXiphixbte
    fB++tJlxCvxWz3Dav4vv11WJEaNe/HG1gJPpO3KzEAyN0Q5fUfs+D/9mv0xPOAJiwuz1
    6kAohpRie0TAn5EpgiMJOBnn9jXLswZIIdo8lhCYhkuP4gNkDZJFcory6MOCdB3/2gNh
    EWqg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1684667497;
    s=strato-dkim-0003; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=MAxbrL6s4umYAPfWIu2ZWLvyepyEGYw/3DWRxdqjiAo=;
    b=/pcMpWVbdRSoJLXcim/mxGpO1suZI+L/f5uzDFVYsh/g3TQzSoQPGeC4pOpD+ldRkJ
    0/Xqa+0rO9NoMuLEqbAg==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlIWs+iCP5vnk6shH0WWb0LN8XZoH94zq68+3cfpOS2fLWKG2joIcnnM11nlGvVQGaIw=="
Received: from nimes.localnet
    by smtp.strato.de (RZmta 49.4.0 AUTH)
    with ESMTPSA id D064b6z4LBBbxCo
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Sun, 21 May 2023 13:11:37 +0200 (CEST)
From:   Bruno Haible <bruno@clisp.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Reuben Thomas <rrt@sc3d.org>,
        Steffen Nurpmeso <steffen@sdaoden.eu>,
        Martin Sebor <msebor@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH] iconv.3: Clarify the behavior when input is untranslatable
Date:   Sun, 21 May 2023 13:11:36 +0200
Message-ID: <18117042.sWSEgdgrri@nimes>
In-Reply-To: <20230521103128.8472-1-alx@kernel.org>
References: <20230521103128.8472-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart2872299.SvYEEZNnvj"
Content-Transfer-Encoding: 7Bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.

--nextPart2872299.SvYEEZNnvj
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Alejandro Colomar wrote:
> This patch adds language that reflects the actual behavior, by adding an
> explicit bullet that distinguishes this case.

That is the right approach. Thanks for taking the initiative.

But I think that more details should be added, so that programmers are
not surprised if their program behaves differently on, say, musl libc
or FreeBSD than on glibc.

Find attached my take to describe the condition appropriately.

Bruno


--nextPart2872299.SvYEEZNnvj
Content-Disposition: attachment; filename="0001-List-a-fifth-conditions-when-iconv-3-may-stop.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="0001-List-a-fifth-conditions-when-iconv-3-may-stop.patch"

From bc3102bd88b2c481d49cdb3433d8520d1289271b Mon Sep 17 00:00:00 2001
From: Bruno Haible <bruno@clisp.org>
Date: Sun, 21 May 2023 13:05:29 +0200
Subject: [PATCH] List a fifth conditions when iconv(3) may stop.

Link: https://sourceware.org/bugzilla/show_bug.cgi?id=29913#c4
Link: https://bugzilla.kernel.org/show_bug.cgi?id=217059
Reported-by: Steffen Nurpmeso <steffen@sdaoden.eu>
Reported-by: Reuben Thomas <rrt@sc3d.org>
Signed-off-by: Bruno Haible <bruno@clisp.org>
---
 man3/iconv.3 | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/man3/iconv.3 b/man3/iconv.3
index 66f59b8c3..b440da578 100644
--- a/man3/iconv.3
+++ b/man3/iconv.3
@@ -71,7 +71,7 @@ If the character encoding of the input is stateful, the
 function can also convert a sequence of input bytes
 to an update to the conversion state without producing any output bytes;
 such input is called a \fIshift sequence\fP.
-The conversion can stop for four reasons:
+The conversion can stop for five reasons:
 .IP \[bu] 3
 An invalid multibyte sequence is encountered in the input.
 In this case,
@@ -80,6 +80,34 @@ it sets \fIerrno\fP to \fBEILSEQ\fP and returns
 \fI*inbuf\fP
 is left pointing to the beginning of the invalid multibyte sequence.
 .IP \[bu]
+A multibyte sequence is encountered that is valid but that cannot be
+translated to the character encoding of the output.  This condition
+depends on the implementation and on the conversion descriptor.
+In the GNU C library and GNU libiconv, if
+.I cd
+was created without the suffix
+.B //TRANSLIT
+or
+.BR //IGNORE ,
+the conversion is strict: lossy conversions produce this condition.
+If the suffix
+.B //TRANSLIT
+was specified, transliteration can avoid this condition in some cases.
+In the musl C library, this condition cannot occur because a conversion to
+.B '*'
+is used as a fallback.
+In the FreeBSD, NetBSD, and Solaris implementations of
+.BR iconv ,
+this condition cannot occur either, because a conversion to
+.B '?'
+is used as a fallback.
+When this condition is met,
+.B iconv
+sets \fIerrno\fP to \fBEILSEQ\fP and returns
+.IR (size_t)\ \-1 .
+\fI*inbuf\fP
+is left pointing to the beginning of the invalid multibyte sequence.
+.IP \[bu]
 The input byte sequence has been entirely converted,
 that is, \fI*inbytesleft\fP has gone down to 0.
 In this case,
-- 
2.34.1


--nextPart2872299.SvYEEZNnvj--



