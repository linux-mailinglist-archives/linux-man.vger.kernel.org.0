Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA2116D32C6
	for <lists+linux-man@lfdr.de>; Sat,  1 Apr 2023 19:19:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229793AbjDARTI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Apr 2023 13:19:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229626AbjDARTH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Apr 2023 13:19:07 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6371B1BF5D
        for <linux-man@vger.kernel.org>; Sat,  1 Apr 2023 10:19:06 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id i5so102011917eda.0
        for <linux-man@vger.kernel.org>; Sat, 01 Apr 2023 10:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680369545;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BIfVnYCX+aUTAylIgq8CTuXTNT1fWlGJhEu7OOSI2cw=;
        b=LK3lF7JMNmA2BLVsC5mw6qns31QUlLjIs4BzwcsNOhSdQPP+Sd9NOdr0FoJ13l6CC8
         g9d0mVIDNNKNq7getOzJeoX0vhzVERbB3R4Jia+O7fThsxaW1UNtHj7SyPS0QG100zik
         1bX1nfMc64ZDO06EXeJml5noIRm2MDZvx/r4dCB/mDP6V3I1rW5Dp3KrAVga9wO1XRo0
         PthTURboJEZNwiOV0QOp2uFNJzSOHxySeAIm62q+W1yyF/XE5vDrxeVQJNS5+fdLXdsk
         d7taBrTu7eT0p5AGfWj6Uy3Qz3Gc6qUSU29S6KXK6Wi/AnddjQ0Gu9H+2BJZIhzJzRTW
         IUjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680369545;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BIfVnYCX+aUTAylIgq8CTuXTNT1fWlGJhEu7OOSI2cw=;
        b=zOrICz1kduK4ToQ6Bk5KxuNmcOwLVHa8kyXmPcPvM6WUsvEywVAuX2wMfhJapB37xW
         YGaCta6qPluluS4KiKScf/vGf/3CWy62VAuqkWPCLV30SzlsEl+rct2QRFp1+AKKazFz
         zDLKPJe1TtgQMFWWSmI10P3Ks/BxgIvB/nrSpjnx0bvrA5J3XTMa0axWoLYYmLRcOPZ5
         iGdT1A5RCJWNjmnfQrJ9WalsUOQUcQDQslooKUwrNL1HIcPIiO+i9276lSmtmm5OD078
         MclYl+ep54dDorQzX48cioysW4pubJoF8LiRax8XvY2XXVtquPtwzJ93/BP+Xw2hRS8Z
         Shew==
X-Gm-Message-State: AAQBX9cBOK/3GMxlcT9w+3NN8krANcprMjDgkcWF7JNgTSI45Gebsnyt
        As055SyVOhkeWp6adu2GPUY=
X-Google-Smtp-Source: AKy350ZeR5cY4ObUTua2iMPZv0USBglRi5fTIvts0GKiK7eGEhXhk8QU9Np3ZSCHgl40ctAatJBVsQ==
X-Received: by 2002:a17:906:5fd9:b0:930:d17b:959b with SMTP id k25-20020a1709065fd900b00930d17b959bmr33427465ejv.22.1680369544788;
        Sat, 01 Apr 2023 10:19:04 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id qb3-20020a1709077e8300b00947d49ec819sm1457956ejc.22.2023.04.01.10.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Apr 2023 10:19:04 -0700 (PDT)
Date:   Sat, 1 Apr 2023 19:19:02 +0200
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v5 3/3] landlock.7: Explain the best-effort fallback
 mechanism in the example
Message-ID: <20230401.1316d7f843d7@gnoack.org>
References: <20230324172419.117632-1-gnoack3000@gmail.com>
 <20230324172419.117632-3-gnoack3000@gmail.com>
 <a5daa228-284e-12d3-cd5b-28611830e21b@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a5daa228-284e-12d3-cd5b-28611830e21b@gmail.com>
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alejandro!

On Sat, Apr 01, 2023 at 12:29:35AM +0200, Alejandro Colomar wrote:
> Hi Günther,
> 
> On 3/24/23 18:24, Günther Noack wrote:
> > Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> > ---
> >  man7/landlock.7 | 65 ++++++++++++++++++++++++++++++++++++++++++++++---
> >  1 file changed, 61 insertions(+), 4 deletions(-)
> > 
> > diff --git a/man7/landlock.7 b/man7/landlock.7
> > index 9c305edef..d1214ba27 100644
> > --- a/man7/landlock.7
> > +++ b/man7/landlock.7
> > [...]
> > +.EX
> > +/* Table of available file system access rights by ABI version */
> > +__u64 landlock_fs_access_rights[] = {
> > +    (1ULL << 13) \- 1,  /* ABI v1                 */
> > +    (1ULL << 14) \- 1,  /* ABI v2: add "refer"    */
> > +    (1ULL << 15) \- 1,  /* ABI v3: add "truncate" */
> 
> Do these magic numbers have macros?  Are users expected to use
> the magic numbers directly?

You are right to point this out - it's the ugly part here :-/

These are bitmasks for the different access rights which are supported
at each ABI version, so they are a bitwise OR of a long list of
LANDLOCK_ACCESS_FS_* constants.

I am aware of three ways to write this out.
Please let me know which of these three you prefer.
(or maybe you have an idea for another alternative?).

(It feels out of scope for this documentation patch, but do you think
these bitmasks should be defined in the uapi/linux/landlock.h header?
You have looked at so many man pages already -- Do you happen to know
other places in the kernel API where such a problem has come up?)


1) Make assumptions about the numbers, for brevity
   (as done in the patch I sent).

__u64 landlock_fs_access_rights[] = {
    (1ULL << 13) - 1,  /* ABI v1                 */
    (1ULL << 14) - 1,  /* ABI v2: add "refer"    */
    (1ULL << 15) - 1,  /* ABI v3: add "truncate" */
}

This is the shortest variant,
but it does not use the Landlock constants from the header.


2) Use the constants from the header and OR them.

This is the "most correct" way, but I feel that it might be too
verbose for a documentation example.  What do you think?

__u64 landlock_fs_access_rights[] = {
    /* ABI v1 */
    LANDLOCK_ACCESS_FS_EXECUTE |
    LANDLOCK_ACCESS_FS_WRITE_FILE |
    LANDLOCK_ACCESS_FS_READ_FILE |
    LANDLOCK_ACCESS_FS_READ_DIR |
    LANDLOCK_ACCESS_FS_REMOVE_DIR |
    LANDLOCK_ACCESS_FS_REMOVE_FILE |
    LANDLOCK_ACCESS_FS_MAKE_CHAR |
    LANDLOCK_ACCESS_FS_MAKE_DIR |
    LANDLOCK_ACCESS_FS_MAKE_REG |
    LANDLOCK_ACCESS_FS_MAKE_SOCK |
    LANDLOCK_ACCESS_FS_MAKE_FIFO |
    LANDLOCK_ACCESS_FS_MAKE_BLOCK |
    LANDLOCK_ACCESS_FS_MAKE_SYM,

    /* ABI v2: Add "refer" */
    LANDLOCK_ACCESS_FS_EXECUTE |
    LANDLOCK_ACCESS_FS_WRITE_FILE |
    LANDLOCK_ACCESS_FS_READ_FILE |
    LANDLOCK_ACCESS_FS_READ_DIR |
    LANDLOCK_ACCESS_FS_REMOVE_DIR |
    LANDLOCK_ACCESS_FS_REMOVE_FILE |
    LANDLOCK_ACCESS_FS_MAKE_CHAR |
    LANDLOCK_ACCESS_FS_MAKE_DIR |
    LANDLOCK_ACCESS_FS_MAKE_REG |
    LANDLOCK_ACCESS_FS_MAKE_SOCK |
    LANDLOCK_ACCESS_FS_MAKE_FIFO |
    LANDLOCK_ACCESS_FS_MAKE_BLOCK |
    LANDLOCK_ACCESS_FS_MAKE_SYM |
    LANDLOCK_ACCESS_FS_REFER,
    
    /* ABI v3: add "truncate" */
    LANDLOCK_ACCESS_FS_EXECUTE |
    LANDLOCK_ACCESS_FS_WRITE_FILE |
    LANDLOCK_ACCESS_FS_READ_FILE |
    LANDLOCK_ACCESS_FS_READ_DIR |
    LANDLOCK_ACCESS_FS_REMOVE_DIR |
    LANDLOCK_ACCESS_FS_REMOVE_FILE |
    LANDLOCK_ACCESS_FS_MAKE_CHAR |
    LANDLOCK_ACCESS_FS_MAKE_DIR |
    LANDLOCK_ACCESS_FS_MAKE_REG |
    LANDLOCK_ACCESS_FS_MAKE_SOCK |
    LANDLOCK_ACCESS_FS_MAKE_FIFO |
    LANDLOCK_ACCESS_FS_MAKE_BLOCK |
    LANDLOCK_ACCESS_FS_MAKE_SYM,
    LANDLOCK_ACCESS_FS_REFER |
    LANDLOCK_ACCESS_FS_TRUNCATE,
}

If I were to write production code, I would probably write it out like
that, to be explicit -- but it feels like a long code example for a
man page? WDYT?


3) Third option is the middle way,
   naming the "highest" known access right for each ABI version:

__u64 landlock_fs_access_rights[] = {
    (LANDLOCK_ACCESS_FS_MAKE_SYM << 1) - 1,  /* ABI v1                 */
    (LANDLOCK_ACCESS_FS_REFER << 1) - 1,     /* ABI v2: add "refer"    */
    (LANDLOCK_ACCESS_FS_TRUNCATE << 1) - 1,  /* ABI v3: add "truncate" */
}

In this case, we still make the assumption that the supported rights
are the "highest" right plus all of the bits in lower order places.


> > +/* Only use the available rights in the ruleset. */
> > +attr.handled_access_fs &= landlock_fs_access_rights[abi \- 1];
> > +.EE
> > +.in
> > +.PP
> > +The available access rights for each ABI version are listed in the
> > +.B VERSIONS
> > +section.
> > +.PP
> > +If our program needed to create hard links or rename files between different directories
> 
> Please keep lines below 80 columns.  Break lines at phrase
> boundaries as appropriate (e.g., in this line:)
> 
> s/ or /\nor /

Thanks, applied.  Will be fixed in the next patch version.


> > +.RB ( LANDLOCK_ACCESS_FS_REFER ),
> > +we would require the following change to the backwards compatibility logic:
> > +Directory reparenting is not possible in a process restricted with Landlock ABI version 1.

Fixed it on this line too.

Thank you for the review and for applying the two earlier patches!
–Günther
