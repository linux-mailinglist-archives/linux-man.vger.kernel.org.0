Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 467997100A2
	for <lists+linux-man@lfdr.de>; Thu, 25 May 2023 00:10:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234361AbjEXWK5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 May 2023 18:10:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230423AbjEXWK4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 May 2023 18:10:56 -0400
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de [81.169.146.166])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49A7F119
        for <linux-man@vger.kernel.org>; Wed, 24 May 2023 15:10:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1684966066; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=bI1Abhb5zeA5XHc6Vxe1KNgeSD710+xzOYnZ8NA6WnXbUWmqC2yTGYp6m+FVm+lMU8
    sZXfAOghqooR91eQnOg4ULmPiOfT3ARO3ykAs/P6dd1+Qa880amSjzdZKsG7ZyNuvfpD
    fAodaGMmiSjvRDVgzHtQ1FzqdklP/304PoR/4JvHoCplBX5jFIIhs9arDzQ9KeEzD8Ed
    iFIFJPcKp3rHMnQe1DLr8yT7bZt8v/UKS2UX0W5BQhpmdQy9CvAypPlwZ/fbh5fv2jOV
    3OgHbJxPxYNXPA1c3CfDTMI/DKOO683tmeD7t17UCARGZhxCi4EyiNAMZnY9aEg6fchJ
    HQzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1684966066;
    s=strato-dkim-0002; d=strato.com;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=206aeUKOaBWBIIkVB5d3EODu0uWEuvWxGnAZ48bjAUY=;
    b=gh9Xnk/o4o6MC9C0dRKe22fcLBRAsY0ip4U12FiNMehCau/3hdJkr7kSIiqCcGcKvF
    MGc0DUPiWExnz7Zq/ZioYoSTUK9Hwt5aDnbEm2+PKzZ/Py/Cd0gmK2LZvpNPLzBo8SLC
    ogGmJP5nZHKg7yX2cALrC4vcm86xf7UnebSCX9BLovzjlwTxXZpf9ddv9mRM3DCRI2ws
    J+ldo0DB3gH2e2KThHCgo3NK9Ov9Giejo7jGvnE86Eo3wY1Luo2bDyb2l5k7fsK6PQnq
    7q4vlONEZ97zYXoDuHNqQejyFrgz+t8FzC60ccNXw8XxL+inakZfuW0mgyp2+SdZ2C4x
    oSZA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1684966066;
    s=strato-dkim-0002; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=206aeUKOaBWBIIkVB5d3EODu0uWEuvWxGnAZ48bjAUY=;
    b=YnEWT4ZGZrxjX7djwORnqxp+ksAmKTvh5xhZCER/RwjvlCaec5A9UMqHnOii7E3mIS
    0dz8Eg52fJg02PK2AUU4mrc6cwSa5YjIdxcStghiPmNTv+uZfCyjPq+jvoGMGkOa5Fzv
    62yQSrz/mqTOvTmNKJgalsn3vHjnukpTeZyRVH4PBlQj2KtySG+RI2UTScdVnCXzlTXc
    pyelT6TGxprMztO15TLgLXE6dJpv76/fIiIBG9TTNjX9IUuEId+1rF/IEq8AUW/rjYOJ
    QJ+ZeVTvHB2RJGcqVK7ay65tT+OpGfmU172XZVm7a2gbkc0KDQtQO21N7TlRTteEPXOu
    XomA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1684966066;
    s=strato-dkim-0003; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=206aeUKOaBWBIIkVB5d3EODu0uWEuvWxGnAZ48bjAUY=;
    b=rSIkjs9y+bjEcGwhRrc454l7eft5yjeQHUu6xwu0Yr6yOaJyM1tHTUv7Arj79WR+XS
    L+XNDvf+7UQ3vL1NevDA==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlIWs+iCP5vnk6shH0WWb0LN8XZoH94zq68+3cfpOU3ffWChLNQAb3OXScJHH3jsGcng=="
Received: from nimes.localnet
    by smtp.strato.de (RZmta 49.4.0 AUTH)
    with ESMTPSA id D064b6z4OM7kNGG
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
    Thu, 25 May 2023 00:07:46 +0200 (CEST)
From:   Bruno Haible <bruno@clisp.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Reuben Thomas <rrt@sc3d.org>,
        Steffen Nurpmeso <steffen@sdaoden.eu>,
        Martin Sebor <msebor@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH] iconv.3: Clarify the behavior when input is untranslatable
Date:   Thu, 25 May 2023 00:07:46 +0200
Message-ID: <14654216.O6BkTfRZtg@nimes>
In-Reply-To: <14c14d88-be1d-94f9-8a1c-3a1128eec9f2@gmail.com>
References: <20230521103128.8472-1-alx@kernel.org> <2906989.o0KrE1Onz3@nimes> <14c14d88-be1d-94f9-8a1c-3a1128eec9f2@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nextPart2706938.9PvXe5no7K"
Content-Transfer-Encoding: 7Bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.

--nextPart2706938.9PvXe5no7K
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Alejandro Colomar wrote:
> > Do you have a better wording than "can ... in some cases"?
> 
> If you include the full version in the commit log, to be able to
> understand it in the future, I'm fine with it.

OK. Here is a patch with the details included in the commit message.


--nextPart2706938.9PvXe5no7K
Content-Disposition: attachment; filename="0001-List-a-fifth-condition-when-iconv-3-may-stop.patch"
Content-Transfer-Encoding: quoted-printable
Content-Type: text/x-patch; charset="UTF-8"; name="0001-List-a-fifth-condition-when-iconv-3-may-stop.patch"

=46rom 4cc4ad011b3ffa30159d3a67e262a46da4600cba Mon Sep 17 00:00:00 2001
=46rom: Bruno Haible <bruno@clisp.org>
Date: Sun, 21 May 2023 13:05:29 +0200
Subject: [PATCH] List a fifth condition when iconv(3) may stop.
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

The wording regarding transliteration is vague, because this man page is not
the right place for going into the details of the transliteration.
Here are the details:
GNU libc and GNU libiconv support transliteration, for example, of "=C2=BD"=
 to "1/2",
or of "=C3=A5" to "aa" in a Danish locale. The transliteration maps a multi=
byte
character of the input encoding to zero or more characters in the output.
There are two kinds of transliteration rules:
  - Those that are valid regardless of locale. Typically this means that the
    original and the transliterated character have similar glyphs, such as
    in the case "=C2=BD" to "1/2".
    In GNU libc, these are collected in the files
    glibc/localedata/locales/translit_*.
  - Those that are valid in a single locale only. Often such a rule
    reflects similar pronounciation of the original and the transliterated
    characters. Some locales have script-based transliteration, for example
    from the Cyrillic script to the Latin script.
    In GNU libc, these are collected in the file
    glibc/localedata/locales/<locale>.
    In GNU libiconv, transliterations of this kind are not supported.

Link: https://sourceware.org/bugzilla/show_bug.cgi?id=3D29913#c4
Link: https://bugzilla.kernel.org/show_bug.cgi?id=3D217059
Reported-by: Steffen Nurpmeso <steffen@sdaoden.eu>
Reported-by: Reuben Thomas <rrt@sc3d.org>
Signed-off-by: Bruno Haible <bruno@clisp.org>
=2D--
 man3/iconv.3 | 35 ++++++++++++++++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/man3/iconv.3 b/man3/iconv.3
index 66f59b8c3..94441f602 100644
=2D-- a/man3/iconv.3
+++ b/man3/iconv.3
@@ -71,7 +71,7 @@ If the character encoding of the input is stateful, the
 function can also convert a sequence of input bytes
 to an update to the conversion state without producing any output bytes;
 such input is called a \fIshift sequence\fP.
=2DThe conversion can stop for four reasons:
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
=2D-=20
2.34.1


--nextPart2706938.9PvXe5no7K--



