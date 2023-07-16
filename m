Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BC03755012
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 19:30:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229495AbjGPRaD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Jul 2023 13:30:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbjGPRaD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Jul 2023 13:30:03 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09DF31B8
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 10:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1689528553;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=b9us3LSameoyHZBAEBuHJQYeWrGsP87vlnyeSqvlFWE=;
        b=SduWl1dDhmjjd9oPpuUBZp9Zrj7GcvVQr6qudBVZsRmii8Smf06WIvMAdfg+mDtdP+dQSX
        B1KbUU+tZAiG1bi3bPrQwFjxG0/rBes5gMATEaoCw1RWCLn/fiPfpYYw+vRvDTLu83RS8x
        2lmstHgMfS81l5pVY9J2C26pMKGMH1A=
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-527-5ubjJoERMDuNuDd0IKCBSA-1; Sun, 16 Jul 2023 13:29:11 -0400
X-MC-Unique: 5ubjJoERMDuNuDd0IKCBSA-1
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-565842189c4so5013454eaf.3
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 10:29:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689528550; x=1692120550;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b9us3LSameoyHZBAEBuHJQYeWrGsP87vlnyeSqvlFWE=;
        b=PbV7xWDrUZolgfD7V3DezGtB4VVcKh/h1B2LA2EvrBfCNL3rbn6rVeUVnXKAe42Oul
         5ULfgtYHlqdVHPER1Tx/RyLeWtVgkiLAxxwpqDTce18jK6LiuqH98ONUb876bBr2+yn0
         gABU14V43BeObopOs16p5pYw3NbDuTfq+dqqz//WSA4d9TmDdI28PYnNtiB/b+rLdJUP
         B4F/mrHUytmV/FuvaLizkclPoqhNkpsvog4ZYbu25JlgSV87+P50CvSzGP3cYWfykECW
         8ecrrwtrea6CprPSiLAeYkJ60griGWS5Ip6OUIbohmoHBSKxwsfjsDny7jO5tHzHX5tc
         DrZA==
X-Gm-Message-State: ABy/qLZcKe0mZQe62IcbrBo9HhOIUjts01wy8O+c5XIhavi23G7odl5M
        XZocjI5VpJU3PdCxvPZEf1n6WpjojSqIkLS9ICnJy9VgRZfwAsvN/ipPSwq28IkwHFtAdyoyWCy
        uHOA5nclRE5Up8bFFoFfURO1qujqH0U7Llx+Y
X-Received: by 2002:a05:6808:1481:b0:3a1:dc2a:a1dd with SMTP id e1-20020a056808148100b003a1dc2aa1ddmr11204102oiw.47.1689528550183;
        Sun, 16 Jul 2023 10:29:10 -0700 (PDT)
X-Google-Smtp-Source: APBJJlGTq5ewY/53SG9eS4vNzttfLMSl3/l4YqA/spa7hDCHsVL04Pwz01+D7KO8kWP2QcoKqKJ4d4/sBKriHTJwluo=
X-Received: by 2002:a05:6808:1481:b0:3a1:dc2a:a1dd with SMTP id
 e1-20020a056808148100b003a1dc2aa1ddmr11204092oiw.47.1689528549842; Sun, 16
 Jul 2023 10:29:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAMO6KYomqkRFVnE1gfNa=htbZ5oBrVAm+AsFVqc6+vqZ0YxnAw@mail.gmail.com>
 <878rbk1b8v.fsf@oldenburg.str.redhat.com> <CAMO6KYr2WEdcSz8RtabxO63ge20y2o8VqYgJOB-0mgbAZNXxdA@mail.gmail.com>
In-Reply-To: <CAMO6KYr2WEdcSz8RtabxO63ge20y2o8VqYgJOB-0mgbAZNXxdA@mail.gmail.com>
From:   Shani Leviim <sleviim@redhat.com>
Date:   Sun, 16 Jul 2023 20:28:33 +0300
Message-ID: <CAMO6KYpoh-RzJC0Ac=1YDHreLk1J0ctx1y5kbUPriKd-U36BVg@mail.gmail.com>
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

Hi all,
My previous patch wasn't aligned with the master branch.
Here's the updated patch (compared to master):

diff --git a/man3/strerror.3 b/man3/strerror.3
index 862e153ee..6a3d83164 100644
--- a/man3/strerror.3
+++ b/man3/strerror.3
@@ -71,11 +71,12 @@ part of the current locale to select the
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
@@ -100,12 +101,12 @@ For example, given
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
@@ -238,7 +239,7 @@ Interface   Attribute       Value
 T{
 .BR strerror ()
 T}     Thread safety   T{
-MT-Unsafe race:strerror
+MT-Safe
 T}
 T{
 .BR strerrorname_np (),
@@ -249,6 +250,10 @@ T{
 .BR strerror_l ()
 T}     Thread safety   MT-Safe
 .TE
+.PP
+Before glibc 2.32,
+.BR strerror ()
+is not MT-Safe.
 .hy
 .ad
 .sp 1
@@ -292,13 +297,6 @@ to
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
@@ -309,4 +307,5 @@ are thread-safe and async-signal-safe.
 .BR error (3),
 .BR perror (3),
 .BR strsignal (3),
-.BR locale (7)
+.BR locale (7),
+.BR signal-safety (7)


Signed-off-by: Shani Leviim <sleviim@redhat.com>

Regards,
Shani Leviim

On Thu, Jul 13, 2023 at 2:15=E2=80=AFPM Shani Leviim <sleviim@redhat.com> w=
rote:
>
> Thanks, Florian, for reviewing,
> My original mail wasn't text plained, sorry for that.
>
> The information in my patch was obtained from a glibc upstream patch,
> commit ID 28aff047818eb1726394296d27b9c7885340bead
> Following the patch above, for glibc versions >=3D2.32, strerror() is
> considered MT-Safe, and the man page should be changed accordingly.
>
> diff --git a/man3/strerror.3 b/man3/strerror.3
> index 72b4d3994..31818e4ae 100644
> --- a/man3/strerror.3
> +++ b/man3/strerror.3
> @@ -91,11 +91,12 @@ part of the current locale to select the
> appropriate language.
>  is
>  .BR EINVAL ,
>  the returned description will be "Invalid argument".)
> -This string must not be modified by the application, but may be
> -modified by a subsequent call to
> +This string must not be modified by the application,
> +and the returned pointer will be invalidated on a subsequent call to
>  .BR strerror ()
>  or
> -.BR strerror_l ().
> +.BR strerror_l (),
> +or if the thread that obtained the string exits.
>  No other library function, including
>  .BR perror (3),
>  will modify this string.
> @@ -120,12 +121,12 @@ For example, given
>  as an argument, this function returns a pointer to the string "EPERM".
>  .\"
>  .SS strerror_r()
> -The
>  .BR strerror_r ()
> -function is similar to
> +is like
>  .BR strerror (),
> -but is
> -thread safe.
> +but might use the supplied buffer
> +.I buf
> +instead of allocating one internally.
>  This function is available in two versions:
>  an XSI-compliant version specified in POSIX.1-2001
>  (available since glibc 2.3.4, but not POSIX-compliant until glibc 2.13),
> @@ -249,7 +250,7 @@ l l l.
>  Interface      Attribute       Value
>  T{
>  .BR strerror ()
> -T}     Thread safety   MT-Unsafe race:strerror
> +T}     Thread safety   MT-Safe
>  T{
>  .BR strerrorname_np (),
>  .BR strerrordesc_np ()
> @@ -260,6 +261,10 @@ T{
>  .BR strerror_l ()
>  T}     Thread safety   MT-Safe
>  .TE
> +.PP
> +Before glibc 2.32,
> +.BR strerror ()
> +is not MT-Safe.
>  .SH CONFORMING TO
>  .BR strerror ()
>  is specified by POSIX.1-2001, POSIX.1-2008, C89, and C99.
> @@ -300,13 +305,6 @@ to
>  if the error number is unknown.
>  C99 and POSIX.1-2008 require the return value to be non-NULL.
>  .SH NOTES
> -The GNU C Library uses a buffer of 1024 characters for
> -.BR strerror ().
> -This buffer size therefore should be sufficient to avoid an
> -.B ERANGE
> -error when calling
> -.BR strerror_r ().
> -.PP
>  .BR strerrorname_np ()
>  and
>  .BR strerrordesc_np ()
> @@ -317,4 +315,5 @@ are thread-safe and async-signal-safe.
>  .BR error (3),
>  .BR perror (3),
>  .BR strsignal (3),
> -.BR locale (7)
> +.BR locale (7),
> +.BR signal-safety (7)
>
> Signed-off-by: Shani Leviim <sleviim@redhat.com>
>
> Regards,
> Shani Leviim
>
> Regards,
> Shani Leviim
>
>
> On Thu, Jul 13, 2023 at 11:12=E2=80=AFAM Florian Weimer <fweimer@redhat.c=
om> wrote:
> >
> > * Shani Leviim:
> >
> > > @@ -169,6 +172,16 @@ is too small and
> > >  is unknown).
> > >  The string always includes a terminating null byte (\(aq\e0\(aq).
> > >  .\"
> > > +.PP
> > > +The automatically generated buffer for
> > > +.BR strerror ()
> > > +and
> > > +.BR strerror_l ()
> > > +is sufficient to avoid an
> > > +.B ERANGE
> > > +error when calling
> > > +.BR strerror_r ().
> > > +.PP
> >
> > I think this gives the wrong impression that the pointer returned by
> > strerror/strerror_l can be used with strerror_r.  This is not the case
> > because the application does not own that buffer, or know its length.
> >
> > Thanks,
> > Florian
> >

