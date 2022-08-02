Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBF5D588357
	for <lists+linux-man@lfdr.de>; Tue,  2 Aug 2022 23:17:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229756AbiHBVRk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Aug 2022 17:17:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbiHBVRj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Aug 2022 17:17:39 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96178CE3F
        for <linux-man@vger.kernel.org>; Tue,  2 Aug 2022 14:17:37 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id y23so6614377ljh.12
        for <linux-man@vger.kernel.org>; Tue, 02 Aug 2022 14:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=botdkQSJ/9Fhf9/UnEugpj9zHmp0pwGhAtvAizsxgvo=;
        b=EsoGzi6NKvdhUA+V/CeLjDdsBBOTI+HMH2Wdro7XTP0mtPAaf+WxDhO7QY16S9ZFau
         q25y6yWf6Z0DoClP4VB6h9ShHM05H6pMSQtd9xNCuRYu9tDRYXLFfEuArGuKPo3ZHnpC
         3BhGyCAjXeUbIIh6GQTUB4Ei21Qc3+juu7/O/1nJD1PnF2mpkIl2ZaW2HATdbHVSfhzJ
         zPEMdgX4S/EEDVk0kJ0yWlArJIhtZ8fcpGzailwioSvy+Z5GHeBxjUzZF2TWUCqOiiMM
         UFv2WVXOQhIVGtZbpWT0AOiaCqXEHG6pHrXm7Olqc0MUsC5sPhRPrKkIwxbx3cFyuEDO
         Aq2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=botdkQSJ/9Fhf9/UnEugpj9zHmp0pwGhAtvAizsxgvo=;
        b=mFZ1HzKhQFD5o1/8DfFo+R3LqPirXEro2qfBsP6whG1cifNcMCG3DMrf24AN0uIkec
         rYiQNwrk1bpZAlRg3gTwMskKFq0YwyQBt7dE6Gm02iF8bJx+1roxj5tOPBbIxzdbnQyv
         e+Y76lEg6He4c3bMr3EVhF4EjyQdis8+4Brw6WyGxV0URhxcEsQBJvpjXpSNKYzI+71F
         IlxwjN9lxZjgcxs+Aqw6kKenTtab4j1kePSPMG0k2Dfa0BELlmU7SM85cam/RqO3UHtk
         Earm9s3w7xvXizTMasqAkwqTOUKdraPgTuXlHe+Rps0JXWiR3TyX3+GZErp33UKKa3qZ
         hOtw==
X-Gm-Message-State: ACgBeo2CF3cZbMKPeFJDNLIsEYeHx5z+FoIbxSMfpfTSJWkFlIpIyfrJ
        OzVGbOpvFdj5mULgG9O83+hdZB5Qp7KaXlXf3F4y6yT76FolMg==
X-Google-Smtp-Source: AA6agR4SJM7ffJqIcvqtFewrsfhP33Ur7Rjhg+lcM3h8ACqDWcRFGkbSaq/0Vz0KQKge7mGbLuiKO7qDA2D3NZUvEto=
X-Received: by 2002:a2e:a411:0:b0:25e:5ff0:469 with SMTP id
 p17-20020a2ea411000000b0025e5ff00469mr1281330ljn.149.1659475055799; Tue, 02
 Aug 2022 14:17:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>
 <3d4a4b63-99f2-1d9a-f496-aa4ee68775be@gmail.com>
In-Reply-To: <3d4a4b63-99f2-1d9a-f496-aa4ee68775be@gmail.com>
From:   enh <enh@google.com>
Date:   Tue, 2 Aug 2022 14:17:24 -0700
Message-ID: <CAJgzZoq1AUJO3wrk3a4OA3Kb2z5yW1otHnmsDWk2GHJbRDafoQ@mail.gmail.com>
Subject: Re: [PATCH] getline.3: wfix.
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

ack. i've fixed all the other instances of `.I "foo"` in that file too...

Date: Fri, 29 Jul 2022 13:13:10 -0700
Subject: [PATCH] getline.3: wfix.

Clarify in the RETURN VALUE section that it's necessary to free the
buffer, since at least one person missed this up at the start of the
DESCRIPTION.

Signed-off-by: Elliott Hughes <enh@google.com>
---
 man3/getline.3 | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/man3/getline.3 b/man3/getline.3
index 8b7357825..cb9e5b049 100644
--- a/man3/getline.3
+++ b/man3/getline.3
@@ -36,12 +36,12 @@ Feature Test Macro Requirements for glibc (see
 .BR getline ()
 reads an entire line from \fIstream\fP,
 storing the address of the buffer containing the text into
-.IR "*lineptr" .
+.IR *lineptr .
 The buffer is null-terminated and includes the newline character, if
 one was found.
 .PP
 If
-.I "*lineptr"
+.I *lineptr
 is set to NULL before the call, then
 .BR getline ()
 will allocate a buffer for storing the line.
@@ -52,26 +52,26 @@ failed.
 .PP
 Alternatively, before calling
 .BR getline (),
-.I "*lineptr"
+.I *lineptr
 can contain a pointer to a
 .BR malloc (3)\-allocated
 buffer
-.I "*n"
+.I *n
 bytes in size.
 If the buffer is not large enough to hold the line,
 .BR getline ()
 resizes it with
 .BR realloc (3),
 updating
-.I "*lineptr"
+.I *lineptr
 and
-.I "*n"
+.I *n
 as necessary.
 .PP
 In either case, on a successful call,
-.I "*lineptr"
+.I *lineptr
 and
-.I "*n"
+.I *n
 will be updated to reflect the buffer address and allocated size respectively.
 .PP
 .BR getdelim ()
@@ -99,6 +99,11 @@ condition).
 In the event of a failure,
 .I errno
 is set to indicate the error.
+.PP
+If
+.I *lineptr
+was set to NULL before the call, then the buffer should be freed by the
+user program even on failure.
 .SH ERRORS
 .TP
 .B EINVAL
-- 
2.37.1.455.g008518b4e5-goog

On Mon, Aug 1, 2022 at 5:54 AM Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> Hi enh,
>
> On 7/29/22 22:22, enh wrote:
> > Clarify in the RETURN VALUE section that it's necessary to free the
> > buffer, since at least one person missed this up at the start of the
> > DESCRIPTION.
> >
> > Signed-off-by: Elliott Hughes <enh@google.com>
> > ---
> >   man3/getline.3 | 4 ++++
> >   1 file changed, 4 insertions(+)
> >
> > diff --git a/man3/getline.3 b/man3/getline.3
> > index 8b7357825..bad30956c 100644
> > --- a/man3/getline.3
> > +++ b/man3/getline.3
> > @@ -99,6 +99,10 @@ condition).
> >   In the event of a failure,
> >   .I errno
> >   is set to indicate the error.
>
> .PP
>
> Since the added text has nothing to do with the previous, let's separate
> them into separate paragraphs.
>
> > +If
> > +.I "*lineptr"
>
> As Branden said, please remove the unnecessary quotes.
>
> > +was set to NULL before the call, then the buffer should be freed by the
> > +user program even on failure.
> >   .SH ERRORS
> >   .TP
> >   .B EINVAL
>
> Cheers,
>
> Alex
>
> --
> Alejandro Colomar
> <http://www.alejandro-colomar.es/>
