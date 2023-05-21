Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5261B70AFFB
	for <lists+linux-man@lfdr.de>; Sun, 21 May 2023 21:37:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230023AbjEUThZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 May 2023 15:37:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229726AbjEUThY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 May 2023 15:37:24 -0400
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.218])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EA3EE1
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 12:37:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1684697825; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=kEG5LlKnzp6053aX+KodOPGHp3ltLmWfF/ZaQcPd5hXgoDp047/kkTsc/l/4TbB4OZ
    1ayK7pplQcQWdlfi618cEZJgDA5HxEPVdB4bmfM1OH6ldqbPDBrrj5aGRAOqXmEXRICk
    6O9B0Hu+WXved4wSSF5i5h23lcoaxtw4ORpo8kEStGeapj/4artiRBb2Gbebzk/CVXqY
    wPbjarK+yY4AeyY8pmTukJ8L2Ty5dvJZgYnPHUtBoRtI9+QiEDiaSeC2KR6Py2bFkiSG
    kVX/gFhi33tWcRoTX/XH1yiNA1ENPIvLwkogBKOZCu7SYCNs7PTC6kn8Cw4PEPVESjyx
    60uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1684697825;
    s=strato-dkim-0002; d=strato.com;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=e3zmvAQFvKP/941ExkiUrigK+WhT8gnPwNZZQK32mn8=;
    b=eGI0XmDDSo6ek8Qbth8+eUrj4EhRHl88WeHh44eQ1yK+oDJmztJVe1QxuXkqAjooAu
    cXhaTQwwKcwF0+SH+T2h6wpmW0JhEPbhe1dHMGxytm7XNgQFpp/4XrQgMwwBoIywivkm
    MowwXJDe+DIO+IDvuB61NpDxu4a5erMHM4XhmKzc1CC0j+PKavVATeoNGeiCs8LsKPop
    a76yn7l/q5HnHdJTTPew+6dpsP69nEYLiJ3OQdn7fS+1fgz5EW9Aai3iIseCduwED+1p
    L3jvJBM9mPoDnhsToK6ASpLhZ0t4KV6f3Gl0z0HTF5Ttk3ih5a4utad1v82NMzatSebv
    nAcw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1684697825;
    s=strato-dkim-0002; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=e3zmvAQFvKP/941ExkiUrigK+WhT8gnPwNZZQK32mn8=;
    b=MOwk5rgEz730gEUBYHrx6GAMoLmqIIpNvSQbIc5t5z1FGo1ETp9lTxDc4svVMuSAJE
    P7VZNO0Sjh1rXiEywce+npaGuG5tz+ozgjBcycSmNcmrxG/m7TVotAD7gkR9X0n9r9tA
    wFa9a2I9QjbcUBXZHFAyxriUiHhzesFNjoDZHN6Whfrd8A108ViSFVu5ybenmV1PD//m
    7/Pej/FLqBLJquQg//HVIBpd9/uS/8E8v4cFNPzvmesPxfOkPHcXua+T1mDknEXB62kP
    st1T1cpcMTPqlcYwmysEhaynxJ7VaXTxAKLk9e8+pO5IRlGUUBz67oO74x9PN2vUE60X
    uPig==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1684697825;
    s=strato-dkim-0003; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=e3zmvAQFvKP/941ExkiUrigK+WhT8gnPwNZZQK32mn8=;
    b=SW1pK1BdxDVMEXMEIAK2uq1vDfrNGxjbaiSliW79/DmMRXFf1g8zKxzOg1hVtnyVC6
    Y5l/FSCSPit18eY6X2CQ==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlIWs+iCP5vnk6shH0WWb0LN8XZoH94zq68+3cfpOQ3KA0bGwo+BXIhlTurgTs7N1UqQ=="
Received: from nimes.localnet
    by smtp.strato.de (RZmta 49.4.0 AUTH)
    with ESMTPSA id D064b6z4LJb4ygk
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Sun, 21 May 2023 21:37:04 +0200 (CEST)
From:   Bruno Haible <bruno@clisp.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Reuben Thomas <rrt@sc3d.org>,
        Steffen Nurpmeso <steffen@sdaoden.eu>,
        Martin Sebor <msebor@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH] iconv.3: Clarify the behavior when input is untranslatable
Date:   Sun, 21 May 2023 21:37:04 +0200
Message-ID: <2906989.o0KrE1Onz3@nimes>
In-Reply-To: <5d2a1776-66fc-4a76-a28e-31c613d3af3a@gmail.com>
References: <20230521103128.8472-1-alx@kernel.org> <18117042.sWSEgdgrri@nimes> <5d2a1776-66fc-4a76-a28e-31c613d3af3a@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart48136561.MN2xkq1pzW"
Content-Transfer-Encoding: 7Bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.

--nextPart48136561.MN2xkq1pzW
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Alejandro,

> Please use semantic newlines.  See man-pages(7):

Thanks for explaining. I wondered whether I should use one space or two spa=
ces
after the end of a sentence, but found no precedent for either style. This
explains it :)

> > +In the GNU C library and GNU libiconv, if
> > +.I cd
> > +was created without the suffix
> > +.B //TRANSLIT
> > +or
> > +.BR //IGNORE ,
> > +the conversion is strict: lossy conversions produce this condition.
> > +If the suffix
> > +.B //TRANSLIT
> > +was specified, transliteration can avoid this condition in some cases.
>=20
> What do you mean by "can" and "some cases"?

GNU libc and GNU libiconv support transliteration, for example, of "=BD" to=
 "1/2",
or of "=E5" to "aa" in a Danish locale. Here I want to give a hint at the
transliteration facility, but without going into too much detail.
"transliteration can avoid this condition if there is a transliteration rule
for the multibyte character and it fits the character encoding of the outpu=
t"
is too detailed, IMO.
Do you have a better wording than "can ... in some cases"?

> I recommend either using \[aq]*\[aq] for producing valid C code,
> or just having an unquoted *.

I made the requested style changes.

New patch is attached.


--nextPart48136561.MN2xkq1pzW
Content-Disposition: attachment; filename="0001-List-a-fifth-conditions-when-iconv-3-may-stop.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="0001-List-a-fifth-conditions-when-iconv-3-may-stop.patch"

From caa04c49e89e64d7e8b52ab878c6dc2cd0cef5b9 Mon Sep 17 00:00:00 2001
From: Bruno Haible <bruno@clisp.org>
Date: Sun, 21 May 2023 13:05:29 +0200
Subject: [PATCH] List a fifth conditions when iconv(3) may stop.

Link: https://sourceware.org/bugzilla/show_bug.cgi?id=29913#c4
Link: https://bugzilla.kernel.org/show_bug.cgi?id=217059
Reported-by: Steffen Nurpmeso <steffen@sdaoden.eu>
Reported-by: Reuben Thomas <rrt@sc3d.org>
Signed-off-by: Bruno Haible <bruno@clisp.org>
---
 man3/iconv.3 | 35 ++++++++++++++++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/man3/iconv.3 b/man3/iconv.3
index 66f59b8c3..94441f602 100644
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
@@ -80,6 +80,39 @@ it sets \fIerrno\fP to \fBEILSEQ\fP and returns
 \fI*inbuf\fP
 is left pointing to the beginning of the invalid multibyte sequence.
 .IP \[bu]
+A multibyte sequence is encountered that is valid but that cannot be
+translated to the character encoding of the output.
+This condition depends on the implementation and on the conversion
+descriptor.
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
+.B \[aq]*\[aq]
+is used as a fallback.
+In the FreeBSD, NetBSD, and Solaris implementations of
+.BR iconv (),
+this condition cannot occur either, because a conversion to
+.B \[aq]?\[aq]
+is used as a fallback.
+When this condition is met,
+.BR iconv ()
+sets
+.I errno
+to
+.B EILSEQ
+and returns
+.IR (size_t)\ \-1 .
+.I *inbuf
+is left pointing to the beginning of the unconvertible multibyte sequence.
+.IP \[bu]
 The input byte sequence has been entirely converted,
 that is, \fI*inbytesleft\fP has gone down to 0.
 In this case,
-- 
2.34.1


--nextPart48136561.MN2xkq1pzW--



