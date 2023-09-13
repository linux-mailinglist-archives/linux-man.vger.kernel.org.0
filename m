Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15DD979EBD1
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 16:58:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233101AbjIMO6N (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 10:58:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236216AbjIMO6M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 10:58:12 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9CD7B8
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 07:58:07 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-31c5cac3ae2so6428949f8f.3
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 07:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694617086; x=1695221886; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+E0e9xBu1q56965BFSQG7sJC37M8a8nKySZcAXvcc0M=;
        b=C6oHck0Sna4uEyuCdv4JDBgYRadjMJojOzccNflB+rAn5CZPkeJs5R47413+yyQTmj
         bfddY82B0IhE6p6x4GyqeBoWDArjVxhdowrZmfE31ZRT4zEiRE+PNsTx1cUcHY0eShvW
         HykMYG85rND0r0vU9UrSYnCY0pjJ/a+xcvWTZyddm5ywPHmg81pBCpVQ5cqNCT/MzJDv
         yi7i9YhqXBpvahmOId9K97zO1cdC/+QgDYhDlmi2AueUiUcBoV5E25dHRxzdIai49ywL
         1LFzHkDgn1WvgeoFnCTiG/qW5ASRzNc5cywNUV0So4WsdfONmfM+AIPxzK4D5cG2PdB0
         DWvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694617086; x=1695221886;
        h=in-reply-to:references:cc:to:content-language:subject:reply-to
         :user-agent:mime-version:date:message-id:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+E0e9xBu1q56965BFSQG7sJC37M8a8nKySZcAXvcc0M=;
        b=qM8aDfQbVrH9Xv5DY3pQ5I3r66oRWOHy/CsRPreVi67noORmaPaugUKS9clRcOdUXK
         ovLI4Ix6Dzvao/VTZNQZ+H1xjwjxIphWgVM5DpvE+cvCAbAX/UenrF0gphdSULw+NQjr
         8xXcvX8cHSEScHoLORNY+LhxFSDxRWKAYI2DGABD7SRqnjam3Y8Q7/3ma6fnY9FfsOBz
         51HNmS/GV6kMTQp1eclmdQ5c40Omq/0vsnHzJTHEnebZzqid1hLpTVemRtW9NBstQmte
         Q/r7hn30Ou9mXOVVaVDnnH1WPGNU2AdYg+vw9DcDIiub+rRL47VhMktdmqntmPwb9SXf
         SKww==
X-Gm-Message-State: AOJu0YylI3BGExm4kGxibk6aQ0GPbVR5MK9PIaKqZ92irICjLyB9Bu1F
        6+5PY2nFCaU6MLb6NsOZ+Lk=
X-Google-Smtp-Source: AGHT+IHO1RX3RH/F/EKTqsb3xKlKIh7BtlNlYRGTR6UBRRVVl7y8gjeEs0fttgIQ1KuZS1j2CbX72g==
X-Received: by 2002:a5d:63c4:0:b0:319:5a7c:6418 with SMTP id c4-20020a5d63c4000000b003195a7c6418mr2316727wrw.43.1694617085886;
        Wed, 13 Sep 2023 07:58:05 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.40.43])
        by smtp.gmail.com with ESMTPSA id a5-20020a056000100500b00317e77106dbsm15679002wrx.48.2023.09.13.07.58.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 07:58:05 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx.manpages@gmail.com>
Message-ID: <c70fef97-2d84-4c0f-a582-b1d6436a50dd@gmail.com>
Date:   Wed, 13 Sep 2023 16:58:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: alx@kernel.org
Subject: Re: [PATCH v2] name_to_handle_at.2,fanotify_mark.2: Document the
 AT_HANDLE_FID flag
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Tom Schwindl <schwindl@posteo.de>, Jan Kara <jack@suse.cz>,
        Jeff Layton <jlayton@poochiereds.net>,
        Christian Brauner <brauner@kernel.org>,
        linux-man@vger.kernel.org
References: <20230906074251.2788908-1-amir73il@gmail.com>
In-Reply-To: <20230906074251.2788908-1-amir73il@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------e3GK518cInpLEEyywY7yPwml"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------e3GK518cInpLEEyywY7yPwml
Content-Type: multipart/mixed; boundary="------------Cv2lbSb1oKFBJLDPnEfIJ96M";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
Reply-To: alx@kernel.org
To: Amir Goldstein <amir73il@gmail.com>
Cc: Tom Schwindl <schwindl@posteo.de>, Jan Kara <jack@suse.cz>,
 Jeff Layton <jlayton@poochiereds.net>, Christian Brauner
 <brauner@kernel.org>, linux-man@vger.kernel.org
Message-ID: <c70fef97-2d84-4c0f-a582-b1d6436a50dd@gmail.com>
Subject: Re: [PATCH v2] name_to_handle_at.2,fanotify_mark.2: Document the
 AT_HANDLE_FID flag
References: <20230906074251.2788908-1-amir73il@gmail.com>
In-Reply-To: <20230906074251.2788908-1-amir73il@gmail.com>

--------------Cv2lbSb1oKFBJLDPnEfIJ96M
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Amir,

On 2023-09-06 09:42, Amir Goldstein wrote:
> A flag to indicate that the requested file_handle is not intended
> to be used for open_by_handle_at(2) and may be needed to identify
> filesystem objects reported in fanotify events.
>=20
> Reviewed-by: Jan Kara <jack@suse.cz>
> Acked-by: Christian Brauner <brauner@kernel.org>
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

Patch applied.  Thank you and the reviewers!

Cheers,
Alex

> ---
>=20
> Hi Alejandro,
>=20
> This is a followup on AT_HANDLE_FID feature from v6.5.
>=20
> Thanks,
> Amir.
>=20
> Changes from v1:
> - Added RVB/ACK
> - Spelling fixes
>=20
>  man2/fanotify_mark.2     | 11 +++++++++--
>  man2/open_by_handle_at.2 | 42 +++++++++++++++++++++++++++++++++++++---=

>  2 files changed, 48 insertions(+), 5 deletions(-)
>=20
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index 3f85deb23..8e885af69 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -743,10 +743,17 @@ do not specify a directory.
>  .B EOPNOTSUPP
>  The object indicated by
>  .I pathname
> -is associated with a filesystem that does not support the encoding of =
file
> -handles.
> +is associated with a filesystem
> +that does not support the encoding of file handles.
>  This error can be returned only with an fanotify group that identifies=

>  filesystem objects by file handles.
> +Calling
> +.BR name_to_handle_at (2)
> +with the flag
> +.BR AT_HANDLE_FID " (since Linux 6.5)"
> +.\" commit 96b2b072ee62be8ae68c8ecf14854c4d0505a8f8
> +can be used as a test
> +to check if a filesystem supports reporting events with file handles.
>  .TP
>  .B EPERM
>  The operation is not permitted because the caller lacks a required cap=
ability.
> diff --git a/man2/open_by_handle_at.2 b/man2/open_by_handle_at.2
> index 4061faea9..3e38eb8e3 100644
> --- a/man2/open_by_handle_at.2
> +++ b/man2/open_by_handle_at.2
> @@ -109,17 +109,44 @@ structure as an opaque data type: the
>  .I handle_type
>  and
>  .I f_handle
> -fields are needed only by a subsequent call to
> +fields can be used in a subsequent call to
>  .BR open_by_handle_at ().
> +The caller can also use the opaque
> +.I file_handle
> +to compare the identity of filesystem objects
> +that were queried at different times and possibly
> +at different paths.
> +The
> +.BR fanotify (7)
> +subsystem can report events
> +with an information record containing a
> +.I file_handle
> +to identify the filesystem object.
>  .PP
>  The
>  .I flags
>  argument is a bit mask constructed by ORing together zero or more of
> -.B AT_EMPTY_PATH
> +.BR AT_HANDLE_FID ,
> +.BR AT_EMPTY_PATH ,
>  and
>  .BR AT_SYMLINK_FOLLOW ,
>  described below.
>  .PP
> +When
> +.I flags
> +contain the
> +.BR AT_HANDLE_FID " (since Linux 6.5)"
> +.\" commit 96b2b072ee62be8ae68c8ecf14854c4d0505a8f8
> +flag, the caller indicates that the returned
> +.I file_handle
> +is needed to identify the filesystem object,
> +and not for opening the file later,
> +so it should be expected that a subsequent call to
> +.BR open_by_handle_at ()
> +with the returned
> +.I file_handle
> +may fail.
> +.PP
>  Together, the
>  .I pathname
>  and
> @@ -363,8 +390,14 @@ capability.
>  .B ESTALE
>  The specified
>  .I handle
> -is not valid.
> +is not valid for opening a file.
>  This error will occur if, for example, the file has been deleted.
> +This error can also occur if the
> +.I handle
> +was acquired using the
> +.B AT_HANDLE_FID
> +flag and the filesystem does not support
> +.BR open_by_handle_at ().
>  .SH VERSIONS
>  FreeBSD has a broadly similar pair of system calls in the form of
>  .BR getfh ()
> @@ -386,6 +419,9 @@ file handles, for example,
>  .IR /proc ,
>  .IR /sys ,
>  and various network filesystems.
> +Some filesystems support the translation of pathnames to
> +file handles, but do not support using those file handles in
> +.BR open_by_handle_at ().
>  .PP
>  A file handle may become invalid ("stale") if a file is deleted,
>  or for other filesystem-specific reasons.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Cv2lbSb1oKFBJLDPnEfIJ96M--

--------------e3GK518cInpLEEyywY7yPwml
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUBzfsACgkQnowa+77/
2zJIQg//UVMcWI/BwIc4/ChuGkY6A7lqorH2UxFpdnAttaDbQa6ndm1p4+GpqO4G
sgOXSTNW3IkkpWwtlHUNa2ZYXq5JPByzleKi+rg0XclRP1klc5p2kJpN6Y9y7KZv
pYeE+J/l4nCBNYNHK8wfEiajg8PQwIZE/6rNWzX0PfDSpe3p/kapLN4vYHbFW9q1
/sV0yLabA/kw2tekjfr0STVgeKrSJqcofj1QGTv7A2UE5Pp5vPgaDbe0r7xca6z8
Tb7gWshzHpIILqWVzbvYGnU92IJ2cUQ+3Kad1wc747wGHWJdqox/zafnR0KxKY8m
ipQWBYsYxEoyoj/2sodDj90y+mPQd8JgegL+lWDfZ6RnLPdygiDIOvUyKeFZKzQ/
7ASx0yoFIGCM8QUEh4YGtzB19lCF8nTA+WPmv14q5i5CdBXbJ7+Le9qbcdvOoIJw
yvrhhalSmYaXblgklndw3mV5HLM907vz3NtBIrucXfQtBDhHXaJCdgRmmDqPOfhx
m2M8wq0mH0X9aQ6yIcDzcujrQ55hrTf57vR7mlDk2cbZkl0E0D7YrOG8DbxgzPxT
8xU/59VPooadxraNX9KjfVMWcrxEEfvLM2r56FBgOshr6Toh/52t8Y05+eiDSLFG
xF5omNaRbDskZxmxjCUV4YgH5erT5PMwb0vMHWxFBB8FVCsonkc=
=dhD/
-----END PGP SIGNATURE-----

--------------e3GK518cInpLEEyywY7yPwml--
