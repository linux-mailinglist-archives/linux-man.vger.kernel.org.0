Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECDDF751FB4
	for <lists+linux-man@lfdr.de>; Thu, 13 Jul 2023 13:17:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233714AbjGMLRY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Jul 2023 07:17:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230514AbjGMLRY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Jul 2023 07:17:24 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C100E26AE
        for <linux-man@vger.kernel.org>; Thu, 13 Jul 2023 04:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1689246997;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=S0GJ4e5yiXxD0JQ5PEa/MUXlVO8mpWJ8G/yDzy4yUGU=;
        b=eiPstaPlAinG4mp6erAem5kxJwN2Z+ShDbVC4KwH50pDOaaxgW+7NitlEfGQnZShir3hS7
        DMJlMNg54TlMJmyKZGo/alcuwP6ZVS7rHtIg+2XY5oLPaGRHYBYkTbNXD4uneQ1iIRW5YK
        j8Ykev//dOzipfVqPRoSHXUVyd1YhTI=
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com
 [209.85.160.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-94-dUCFpRT2M1-jJ1gCj0RizA-1; Thu, 13 Jul 2023 07:16:36 -0400
X-MC-Unique: dUCFpRT2M1-jJ1gCj0RizA-1
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-1b03916c318so994593fac.0
        for <linux-man@vger.kernel.org>; Thu, 13 Jul 2023 04:16:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689246995; x=1691838995;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S0GJ4e5yiXxD0JQ5PEa/MUXlVO8mpWJ8G/yDzy4yUGU=;
        b=D/ZJ4gD5KpWsVn1S0Fc592ChtjTmf8Q6sR3JhsQBQnB9KnfwK51dttUzbcUEF0pRGE
         Ri7AUGFBCkB2q2KoRtH/uG+wGEH0kLF0sCfg5krta0qv8FdcEr1ZwojgVvVKXpWTeULP
         AORUPpxkJ6bQdyieLUTFcVZQddtd8rmMddn9NVjD/+Di3DK7LE+Her3KRLFCdJ648xoy
         xC32yD7lbldXQ6Lqn3gEI01gAocDV4vBVBXMBRyEdUPlXESFz2I9xh3E0RNBYiePrGts
         rhWmy8oT4lEH+KA4cHSq4lqwKejZwVsJGjeA7dVLj9nC3P17bdWcLfzpfLb2B4olNHUI
         amnw==
X-Gm-Message-State: ABy/qLbeH288ZFIIWu3bC1Z3bdpGYr5hJVZpT2zpb6O/DDtgUNGhlbs+
        wwg/9jqH3suj0GcJfbAO/mMzFxgJhzk529h6X7Cfnojx3JxHiWSsqLqllb9yDKFaGfVi0melm7f
        IuKaRptIxAExzjBn95zlwe2PpWZssaaDhjbvc
X-Received: by 2002:a05:6870:9694:b0:1b7:8950:f609 with SMTP id o20-20020a056870969400b001b78950f609mr2050704oaq.26.1689246995565;
        Thu, 13 Jul 2023 04:16:35 -0700 (PDT)
X-Google-Smtp-Source: APBJJlF0BodQqv/vSIcSdtqWAMgk1zDxTvp75OcfKL9I+Y0f3gaHu+RbYgqYBhGgxofYfV0wdctgoyTTsushNvfaCD8=
X-Received: by 2002:a05:6870:9694:b0:1b7:8950:f609 with SMTP id
 o20-20020a056870969400b001b78950f609mr2050688oaq.26.1689246995313; Thu, 13
 Jul 2023 04:16:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
 <878rbk1b8v.fsf@oldenburg.str.redhat.com>
In-Reply-To: <878rbk1b8v.fsf@oldenburg.str.redhat.com>
From:   Shani Leviim <sleviim@redhat.com>
Date:   Thu, 13 Jul 2023 14:15:59 +0300
Message-ID: <CAMO6KYr2WEdcSz8RtabxO63ge20y2o8VqYgJOB-0mgbAZNXxdA@mail.gmail.com>
Subject: Re: [patch] strerror.3: Change strerror() reference from MT-Unsafe to MT-Safe
To:     Florian Weimer <fweimer@redhat.com>
Cc:     alx@kernel.org, linux-man@vger.kernel.org,
        automotive-devel@redhat.com, "Carlos O'Donell" <carlos@redhat.com>,
        Sergei Gromeniuk <sgromeni@redhat.com>,
        Gobinda Das <godas@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks, Florian, for reviewing,
My original mail wasn't text plained, sorry for that.

The information in my patch was obtained from a glibc upstream patch,
commit ID 28aff047818eb1726394296d27b9c7885340bead
Following the patch above, for glibc versions >=3D2.32, strerror() is
considered MT-Safe, and the man page should be changed accordingly.

diff --git a/man3/strerror.3 b/man3/strerror.3
index 72b4d3994..31818e4ae 100644
--- a/man3/strerror.3
+++ b/man3/strerror.3
@@ -91,11 +91,12 @@ part of the current locale to select the
appropriate language.
 is
 .BR EINVAL ,
 the returned description will be "Invalid argument".)
-This string must not be modified by the application, but may be
-modified by a subsequent call to
+This string must not be modified by the application,
+and the returned pointer will be invalidated on a subsequent call to
 .BR strerror ()
 or
-.BR strerror_l ().
+.BR strerror_l (),
+or if the thread that obtained the string exits.
 No other library function, including
 .BR perror (3),
 will modify this string.
@@ -120,12 +121,12 @@ For example, given
 as an argument, this function returns a pointer to the string "EPERM".
 .\"
 .SS strerror_r()
-The
 .BR strerror_r ()
-function is similar to
+is like
 .BR strerror (),
-but is
-thread safe.
+but might use the supplied buffer
+.I buf
+instead of allocating one internally.
 This function is available in two versions:
 an XSI-compliant version specified in POSIX.1-2001
 (available since glibc 2.3.4, but not POSIX-compliant until glibc 2.13),
@@ -249,7 +250,7 @@ l l l.
 Interface      Attribute       Value
 T{
 .BR strerror ()
-T}     Thread safety   MT-Unsafe race:strerror
+T}     Thread safety   MT-Safe
 T{
 .BR strerrorname_np (),
 .BR strerrordesc_np ()
@@ -260,6 +261,10 @@ T{
 .BR strerror_l ()
 T}     Thread safety   MT-Safe
 .TE
+.PP
+Before glibc 2.32,
+.BR strerror ()
+is not MT-Safe.
 .SH CONFORMING TO
 .BR strerror ()
 is specified by POSIX.1-2001, POSIX.1-2008, C89, and C99.
@@ -300,13 +305,6 @@ to
 if the error number is unknown.
 C99 and POSIX.1-2008 require the return value to be non-NULL.
 .SH NOTES
-The GNU C Library uses a buffer of 1024 characters for
-.BR strerror ().
-This buffer size therefore should be sufficient to avoid an
-.B ERANGE
-error when calling
-.BR strerror_r ().
-.PP
 .BR strerrorname_np ()
 and
 .BR strerrordesc_np ()
@@ -317,4 +315,5 @@ are thread-safe and async-signal-safe.
 .BR error (3),
 .BR perror (3),
 .BR strsignal (3),
-.BR locale (7)
+.BR locale (7),
+.BR signal-safety (7)

Signed-off-by: Shani Leviim <sleviim@redhat.com>

Regards,
Shani Leviim

Regards,
Shani Leviim


On Thu, Jul 13, 2023 at 11:12=E2=80=AFAM Florian Weimer <fweimer@redhat.com=
> wrote:
>
> * Shani Leviim:
>
> > @@ -169,6 +172,16 @@ is too small and
> >  is unknown).
> >  The string always includes a terminating null byte (\(aq\e0\(aq).
> >  .\"
> > +.PP
> > +The automatically generated buffer for
> > +.BR strerror ()
> > +and
> > +.BR strerror_l ()
> > +is sufficient to avoid an
> > +.B ERANGE
> > +error when calling
> > +.BR strerror_r ().
> > +.PP
>
> I think this gives the wrong impression that the pointer returned by
> strerror/strerror_l can be used with strerror_r.  This is not the case
> because the application does not own that buffer, or know its length.
>
> Thanks,
> Florian
>

