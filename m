Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 813717C98B7
	for <lists+linux-man@lfdr.de>; Sun, 15 Oct 2023 12:43:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229555AbjJOKnK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Oct 2023 06:43:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229522AbjJOKnJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Oct 2023 06:43:09 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9110CA3
        for <linux-man@vger.kernel.org>; Sun, 15 Oct 2023 03:43:08 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7652FC433C8;
        Sun, 15 Oct 2023 10:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697366588;
        bh=dSYLAEZodXHma1J0ys7hmGUvjUck7979eL7cdyMZBlo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=urM2rCsnYf6N/ecBW6/qtFD0ap83NcRChB1gYizIOq/HjAIg4uxgkHXB2Le/iKMVT
         uxLHuywmsBgDOcHUiNKXfFaBKTyoO+VxAAJULcF0QyTWoQiKXXmfYrhtlZIjYvI1vH
         9MVRHFjkwUFpZF/bb/1SAVLfluJ9ijglCnqOd2Us0A+LcTAmNuUSIfQhmmT4rx0CmE
         r/lt19doNWTWcdyOhfrRSnN9kagCm08rdmtiMWlgRWxw8dS1p39NiKCwIqn1ztetlX
         VvErr18tVFCiRKu4InUMRBIs8SjBRYuuGIZ7rWuUHtNEE4M310lz4I4ArAUn50xrWS
         lWqBIf2AR3EJg==
Date:   Sun, 15 Oct 2023 12:43:05 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Matthew House <mattlloydhouse@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] fanotify.7: Fix field name in struct
 fanotify_event_info_fid
Message-ID: <ZSvCOcZCUwRj9AE3@debian>
References: <20231015005029.962889-1-mattlloydhouse@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="1vVpbK+mTVB896SV"
Content-Disposition: inline
In-Reply-To: <20231015005029.962889-1-mattlloydhouse@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--1vVpbK+mTVB896SV
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 15 Oct 2023 12:43:05 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Matthew House <mattlloydhouse@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] fanotify.7: Fix field name in struct
 fanotify_event_info_fid

Hi Matthew,

On Sat, Oct 14, 2023 at 08:50:27PM -0400, Matthew House wrote:
> The final field of this struct as defined in include/uapi/linux/fanotify.h
> (and as used in the example program) is called handle, not file_handle.
> Fix this, and also replace the zero-length array with a flexible array
> member to match the definition in the header.
>=20
> Fixes: 0a4db6dc742d ("fanotify.7, fanotify_init.2, fanotify_mark.2: Docum=
ent FAN_REPORT_FID and directory modification events")
> Signed-off-by: Matthew House <mattlloydhouse@gmail.com>

Patch applied.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Ddaf430dfd10eb12651a112f124b438f9c8fe4ffb>

Thanks,

Alex

> ---
>  man7/fanotify.7 | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)
>=20
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index 7c72a2996..1dea4c13c 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -207,7 +207,7 @@ structure within the read buffer:
>  struct fanotify_event_info_fid {
>      struct fanotify_event_info_header hdr;
>      __kernel_fsid_t fsid;
> -    unsigned char file_handle[0];
> +    unsigned char handle[];
>  };
>  .EE
>  .in
> @@ -576,8 +576,9 @@ and contains the same value as
>  when calling
>  .BR statfs (2).
>  .TP
> -.I file_handle
> -This is a variable length structure of type struct file_handle.
> +.I handle
> +This field contains a variable-length structure of type
> +.IR "struct file_handle" .
>  It is an opaque handle that corresponds to a specified object on a
>  filesystem as returned by
>  .BR name_to_handle_at (2).
> @@ -601,14 +602,14 @@ if the value of
>  field is
>  .BR FAN_EVENT_INFO_TYPE_FID ,
>  the
> -.I file_handle
> +.I handle
>  identifies the object correlated to the event.
>  If the value of
>  .I info_type
>  field is
>  .BR FAN_EVENT_INFO_TYPE_DFID ,
>  the
> -.I file_handle
> +.I handle
>  identifies the directory object correlated to the event or the parent di=
rectory
>  of a non-directory object correlated to the event.
>  If the value of
> @@ -616,7 +617,7 @@ If the value of
>  field is
>  .BR FAN_EVENT_INFO_TYPE_DFID_NAME ,
>  the
> -.I file_handle
> +.I handle
>  identifies the same directory object that would be reported with
>  .B FAN_EVENT_INFO_TYPE_DFID
>  and the file handle is followed by a null terminated string that identif=
ies the
> @@ -796,9 +797,9 @@ but not all kinds of error types are reported by all =
filesystems.
>  .PP
>  Errors not directly related to a file (i.e. super block corruption)
>  are reported with an invalid
> -.IR file_handle .
> +.IR handle .
>  For these errors, the
> -.I file_handle
> +.I handle
>  will have the field
>  .I handle_type
>  set to
> --=20
> 2.42.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--1vVpbK+mTVB896SV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUrwjkACgkQnowa+77/
2zJKFg/2PpjoWLbdOL4PlKJGPWSrQuf5wi+J1uxG0qRPnQwjsrySGEk5Ys9xqIsY
wOL3NKen+/qzg5gxeJZ6wirQmdwbbB1srATrRnPIsM4wTDLb7R9ILk7DsPopSHU7
XGV722GtVOo/p4sYPniAMSqtK1knndQNvNlfBv0rg62vdTTnfABt7TMp+fcHBHlg
ENPQUTsgy/ahZheVF2KaoYW7luc9htOD5gM3MXfi5tiAtYfcxcZoAflGeX+hw+Nx
vHx2f9FBz8Oy9e9Wen6jUR/5Sz4kbNYaQw1r7ra8bR8HLi5dR20pnGtgZ+CsfbR6
jPEavG/JOwZdYF6NuDO3zDQdrUcI/kG3OeMwCBBrEvSVJjYCOISCMXnFDOCXlb6v
T44Ofnn47rMzAD4g4sr0z7TaeRYQ0TcP39hzBb8mrJ9e67aILjamPCqm7IBvZzvA
ToyHdzOSLCPEMBpOpCYqvgQfWzDcayh5XE+8+FA6xzScmIxR0EYdKnbCqOTBT4Cr
I/+01jRrVwBf21FsB2S1j6zfEmX67YC+Nke3tgLQSyBvDHxbIFX9jOaH4hl9bThg
45HTcflQTU9Nfm6nD26c4//ksgsZBePdcV0fFjPN85iPS3E9fSiUJStlTL7iddSw
D2inT6RvpwGbIb1Bea3NWiWiF9dOkOEqC9M3sgXB+CPQ1VSgmQ==
=Cp/v
-----END PGP SIGNATURE-----

--1vVpbK+mTVB896SV--
