Return-Path: <linux-man+bounces-2700-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B4433A762E5
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 11:01:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E826D7A52D7
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 09:00:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 350541D63D8;
	Mon, 31 Mar 2025 09:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnoTAzQH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E95067083C
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 09:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743411689; cv=none; b=S7eg63FOIqoZguTIxZR1joECaGjIfqo6U1rtJ/zznLeSVx2Iyc5qAZ53PkMHJFeb/N1TDq1/QCw+thMEtMTxq+OzxaeLCWYsRiCPjKk2vKEu0kJQMrKyzFp0LTfVvt6UjqADvm1wmgGfirYAgluiVL6n7eTqjBVczdUWd11eAJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743411689; c=relaxed/simple;
	bh=AEIXuCOiUXgY/cm4jchotrxTeeq5DvPmkFJ5YjzwQag=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RKRnv7NP0Ne04szDX6N2jMfeLIrX8eahMcT2cwGe3dWNWZP/u2hHQON92Rig3z7rutsImuu/EcJOsRgsafkcgDh+UCo4jEsmwGr0NFd1eI08wgHMH6fjwItk5kmsHIVCusix89AvpGmHiakA5MVGT8JT8MYuzNABH4dqbsE4qGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnoTAzQH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E681C4CEE3;
	Mon, 31 Mar 2025 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743411688;
	bh=AEIXuCOiUXgY/cm4jchotrxTeeq5DvPmkFJ5YjzwQag=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nnoTAzQHz0VskKYxo3vnFnY19hf/t28M+7hDQzg0xzTnkfZpUjLtVHSveymtYVNzs
	 lEiZfagsaf+hKeplDduNppd1iaDPSO+JeKGfXBpko+DJvPl3KBbxlt+GgMu58YVtLC
	 bMnTP4CDjGVonKoGjQD6EBUnvoaiu3/8mF/E6782UrydFF0HiXqWSFAJiuC/5kHNhG
	 HRW+xTuf9fnlGGBCLt8eWcyOsw3sSe+csIDtZUFt3sLwmYYw3ErnB8r6LccFw9irxf
	 gbyZznf2aJY1o3iFNeN8+oMCjX5umv6+nmZXwhZ+IY5xbQeoxNp5NUCSQpLkqGAbMV
	 wPaCPxs1QKOxQ==
Date: Mon, 31 Mar 2025 11:01:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, Jan Kara <jack@suse.cz>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/3] fanotify.7: Document FAN_RESPONSE_INFO_AUDIT_RULE
Message-ID: <ecb3r3iw7c6efbl5dagb7jy7sailmdpmil3qg76lm7s3ub3qua@e55vmngsboyq>
References: <20250331082759.1424401-1-amir73il@gmail.com>
 <20250331082759.1424401-2-amir73il@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ohb37h2csk5zd3cd"
Content-Disposition: inline
In-Reply-To: <20250331082759.1424401-2-amir73il@gmail.com>


--ohb37h2csk5zd3cd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, Jan Kara <jack@suse.cz>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/3] fanotify.7: Document FAN_RESPONSE_INFO_AUDIT_RULE
References: <20250331082759.1424401-1-amir73il@gmail.com>
 <20250331082759.1424401-2-amir73il@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250331082759.1424401-2-amir73il@gmail.com>

Hi Amir,

On Mon, Mar 31, 2025 at 10:27:58AM +0200, Amir Goldstein wrote:
> Document FAN_RESPONSE_INFO_AUDIT_RULE extended response info record
> that was added in v6.3.
>=20
> Cc: Jan Kara <jack@suse.cz>
> Cc: Richard Guy Briggs <rgb@redhat.com>
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> ---
>  man/man7/fanotify.7 | 43 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
>=20
> diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
> index ad864b762..863578bd7 100644
> --- a/man/man7/fanotify.7
> +++ b/man/man7/fanotify.7
> @@ -787,6 +787,49 @@ flag can be set in the
>  field.
>  In that case, the audit subsystem will log information about the access
>  decision to the audit logs.
> +.P
> +Since Linux 6.3,
> +.\" commit 70529a199574c15a40f46b14256633b02ba10ca2
> +the
> +.B FAN_INFO
> +flag can be set in the
> +.I .response
> +field.
> +It indicates that an extra variable-length response record follows the
> +.I fanotify_response
> +structure.
> +Extra response records start with a common header:
> +.P
> +.in +4n
> +.EX
> +struct fanotify_response_info_header {
> +    __u8 type;
> +    __u8 pad;
> +    __u16 len;
> +};
> +.EE
> +.in
> +.P
> +The value of
> +.I .type
> +determines the format of the extra response record.
> +In case the value of
> +.I .type
> +is
> +.BR FAN_RESPONSE_INFO_AUDIT_RULE ,

How about making this more schematic?  I'm thinking of the following
(see diff for both the source code and the rendered page).


Cheers,
Alex

$ git diff
diff --git i/man/man7/fanotify.7 w/man/man7/fanotify.7
index 863578bd7..4b1e2c215 100644
--- i/man/man7/fanotify.7
+++ w/man/man7/fanotify.7
@@ -813,13 +813,11 @@ .SS Dealing with permission events
 The value of
 .I .type
 determines the format of the extra response record.
-In case the value of
-.I .type
-is
-.BR FAN_RESPONSE_INFO_AUDIT_RULE ,
-the following response record is expected
+.TP
+.BR FAN_RESPONSE_INFO_AUDIT_RULE
+The following response record is expected
 with extra details for the audit log:
-.P
+.IP
 .in +4n
 .EX
 struct fanotify_response_info_audit_rule {
$ MANWIDTH=3D72 diffman-git=20
--- HEAD:man/man7/fanotify.7
+++ ./man/man7/fanotify.7
@@ -539,16 +539,18 @@
          };
=20
      The value of .type determines the format  of  the  extra  response
-     record.   In  case  the  value  of  .type is FAN_RESPONSE_INFO_AU=E2=
=80=90
-     DIT_RULE, the following response record is expected with extra de=E2=
=80=90
-     tails for the audit log:
+     record.
=20
-         struct fanotify_response_info_audit_rule {
-             struct fanotify_response_info_header hdr;
-             __u32 rule_number;
-             __u32 subj_trust;
-             __u32 obj_trust;
-         };
+     FAN_RESPONSE_INFO_AUDIT_RULE
+            The  following  response  record is expected with extra de=E2=
=80=90
+            tails for the audit log:
+
+                struct fanotify_response_info_audit_rule {
+                    struct fanotify_response_info_header hdr;
+                    __u32 rule_number;
+                    __u32 subj_trust;
+                    __u32 obj_trust;
+                };
=20
    Monitoring filesystems for errors
      A single FAN_FS_ERROR event is stored per filesystem at once.  Ex=E2=
=80=90


> +the following response record is expected
> +with extra details for the audit log:
> +.P
> +.in +4n
> +.EX
> +struct fanotify_response_info_audit_rule {
> +    struct fanotify_response_info_header hdr;
> +    __u32 rule_number;
> +    __u32 subj_trust;
> +    __u32 obj_trust;
> +};
> +.EE
> +.in
>  .\"
>  .SS Monitoring filesystems for errors
>  A single
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--ohb37h2csk5zd3cd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfqWeQACgkQ64mZXMKQ
wqlLGg//TjRU3tqZJcMWBHwToQ4RkN+b1HMliapyHM1pZf76+df8pF2dENpIiGBX
3kplvK6VliEakO33TFEGvhGGjSLBVAaKFRc4rglOxTZdiN5BScuCYkoTwHkDXHLr
xQzppFCYbhDGtdAnoHyNbRZDQ+QMwW/dxJqLsk/AcHMnmHAIv9KkVbBRed9zHIXe
juMG63HEExPm2RyGHB8m4kk8/OtZUyMKMTE+6XtLBckaXAre8xETUZg6CWX2ymw0
nFe2sJj1Bh7oCet3PEgrGX0xRYiHLmaFvA5t5w+15U5KAZio4prsOJwgE+vMJuKX
BHU7eNK66NqEpjBZpJqY7xTMDtpGjyVTkjME3yxLVXFmpCHma4trNF3CoeJ+ESVU
bM15sAq9KKQB2O+oTgKNJOKLyrDOQxmCL9OBbHjewLxEhhF35s2Sr+yyq0E2T5BL
M7w7kTikYJtJsSlfzxCiFti6KOU4OGoOV4MBD3y2V0pfdIF37BCEHMKAi63uUWYO
X+x197aKT6c4fXsmN8nyM8hHjAzrq00Ho8n143XAsPldiOvYjiF/V0wMwi5kKQl6
PfcvFmmWk1jddwyxGQa9r+ts2n8whiiH35TrGjEILDOguizTD+pkCw0eWSefaEiS
wvW0pjR1rGT+mLsYsv5nse3KT4QUfUrOBCF1YPOrk6kU67xcYDU=
=onvn
-----END PGP SIGNATURE-----

--ohb37h2csk5zd3cd--

