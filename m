Return-Path: <linux-man+bounces-5269-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFamDUn2uWnnPwIAu9opvQ
	(envelope-from <linux-man+bounces-5269-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 01:48:09 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D432B4B1F
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 01:48:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 79CDD3014137
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 00:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0864175A91;
	Wed, 18 Mar 2026 00:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3AoOXIX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B8B63CB;
	Wed, 18 Mar 2026 00:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773794886; cv=none; b=hmgA5QOEGx50Ll8aoN9QOgKLb/+VnhQbMzvV12Y9qWqldy+8ZM5VGVQGIlmsGRvS9PIKd2BZxu1stigVyMLzubJnyVIuHUnZ4m7xzm2xhEa83dGxj7nH+v5rnmAWd7CqtQqKWxgvmBUqISLhjCsNDo20Rj5cB1UlhSNQt+xLc5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773794886; c=relaxed/simple;
	bh=FotjXSJvWUH6rdBryppDCPpRvB+1Y8dyv1s8iqaqhRs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iJD65oL7UYt3EFU6WGeumy9o+Ks57ZHjldY/L65V3xbRu/VmeGe8tb1MZLGPRYgvPiXug7WSxObnYb5MwJCbDalmoX5i8bBd9ZkLy1AAMZuf87ArHJ8Tj3V5XEdrocMSyNzg0NTLJWopa9cwJvlRtRnzLCPPNz9UqgHebBEEKbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3AoOXIX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B86B4C4CEF7;
	Wed, 18 Mar 2026 00:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773794886;
	bh=FotjXSJvWUH6rdBryppDCPpRvB+1Y8dyv1s8iqaqhRs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M3AoOXIXQ/h+Cx2PptIbH3ojBsrTE0z94dH/ORwnItUulugGRvQygOUY33rEtQjx1
	 1qX3V3fWETSYMC+SVGyMK8CQIE/nef9CQTVDKoIQF1DqXcUDr88I1FGs16bxe4D3++
	 UvU9O76CSHe7YmFtLQirUb0VSUo9RajdhK92UL3fkpemYGlimiUwG2gbM/FR/w2QWa
	 qQzWU/vV241vnb0hSmlzXv90W8+BjjOmD/n2LR2q7rqhdb+oCcO7KboYRTtfy0a3LW
	 t1tmYBeFK4LOyLzZqg3/z5qdC3a7kXwgVQjEfjopSHNOP0YO/1cu7p9OhnafOoRxJy
	 YNb+suhKrRpag==
Date: Wed, 18 Mar 2026 01:48:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH] man/man2/statmount.2: Fix STATMOUNT_MNT_{UID,GID}MAP
 documentation
Message-ID: <abnzrP7a2ci_dG4j@devuan>
References: <6e8de405e5ada94279b68cd2d2159cb8393921ea.1773749913.git.b.sachdev1904@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4f3pyo35xnacq4ub"
Content-Disposition: inline
In-Reply-To: <6e8de405e5ada94279b68cd2d2159cb8393921ea.1773749913.git.b.sachdev1904@gmail.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5269-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,gmail.com,virtuozzo.com,kernel.org];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: A0D432B4B1F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--4f3pyo35xnacq4ub
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH] man/man2/statmount.2: Fix STATMOUNT_MNT_{UID,GID}MAP
 documentation
Message-ID: <abnzrP7a2ci_dG4j@devuan>
References: <6e8de405e5ada94279b68cd2d2159cb8393921ea.1773749913.git.b.sachdev1904@gmail.com>
MIME-Version: 1.0
In-Reply-To: <6e8de405e5ada94279b68cd2d2159cb8393921ea.1773749913.git.b.sachdev1904@gmail.com>

Hey Bhavik!

On 2026-03-17T17:48:33+0530, Bhavik Sachdev wrote:
> In case of idmapped mounts and statmount(), three cases can occur:
>=20
> 1. The mount is not an idmapped mount. In this case, smbuf->mask will
>    *not* have STATMOUNT_MNT_{UID,GID}MAP set.
> 2. The mount is an idmapped mount but *all* its mappings are *not*
>    resolvable in the user namespace of the caller.
>    In this case, smbuf->mask will have STATMOUNT_MNT_{UID,GID}MAP set
>    but smbuf->mnt_{uid,gid}map_num will be 0.
> 3. The mount is an idmapped mount and *all* its mappings are resolvable
>    in the user namespace of the caller.
>    In this case, smbuf->mask will have STATMOUNT_MNT_{UID,GID}MAP set
>    and mbuf->mnt_{uid,gid}map_num will be greater than 0.
>=20
> The current documentation fails to differentiate between case 1 and 2
> and incorrectly states that STATMOUNT_MNT_{UID,GID}MAP will be set for
> non-idmapped mounts.
>
> We can verify that the above is the case by looking at [1] and is made
> explicitly clear by the comment in the implementation [2]. The case for
> STATMOUNT_MNT_{UID,GID}MAP not being raised for a non-idmapped mount can
> be verified by running this program [3].
>=20
> [1]:
> <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3D37c4a9590e1efcae7749682239fc22a330d2d325>
> [2]:
> <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/=
fs/namespace.c#n5489>
> [3]: <https://gist.github.com/bsach64/674264ec69e592f906b2713c9f95060b>

Thanks for the example program!  I'll paste it here, to avoid others
having to go to github to read it.

	#define _GNU_SOURCE
	#include <limits.h>
	#include <errno.h>
	#include <fcntl.h>
	#include <linux/mount.h>
	#include <linux/stat.h>
	#include <stdio.h>
	#include <stdlib.h>
	#include <string.h>
	#include <sys/stat.h>
	#include <sys/syscall.h>
	#include <unistd.h>


	static int __statmount(__u64 mnt_id, __u64 mnt_ns_id, __u64 mask,
			       struct statmount *stmnt, size_t bufsize,
			       unsigned int flags)
	{
		struct mnt_id_req req =3D {
			.size		=3D MNT_ID_REQ_SIZE_VER1,
			.mnt_id		=3D mnt_id,
			.param		=3D mask,
			.mnt_ns_id	=3D mnt_ns_id,
		};

		return syscall(__NR_statmount, &req, stmnt, bufsize, flags);
	}

	static struct statmount *sys_statmount(__u64 mnt_id, __u64 mnt_ns_id,
					       __u64 mask, unsigned int flags)
	{
		size_t bufsize =3D 1 << 15;
		struct statmount *stmnt =3D NULL, *tmp =3D NULL;
		int ret;

		for (;;) {
			tmp =3D realloc(stmnt, bufsize);
			if (!tmp)
				goto out;

			stmnt =3D tmp;
			ret =3D __statmount(mnt_id, mnt_ns_id, mask, stmnt, bufsize, flags);
			if (!ret)
				return stmnt;

			if (errno !=3D EOVERFLOW)
				goto out;

			bufsize <<=3D 1;
			if (bufsize >=3D UINT_MAX / 2)
				goto out;
		}

	out:
		free(stmnt);
		return NULL;
	}

	int main(void) {
		struct statmount *sm;
		struct statx stx;

		int fd =3D open("/tmp", O_PATH);
		if (fd < 0) {
			perror("open /tmp");
			return 1;
		}

		memset(&stx, 0, sizeof(stx));

		if (statx(fd, "", AT_EMPTY_PATH, STATX_MNT_ID_UNIQUE, &stx) < 0) {
			perror("statx");
			close(fd);
			return 1;
		}

		if (!(stx.stx_mask & STATX_MNT_ID_UNIQUE)) {
			fprintf(stderr, "STATX_MNT_ID_UNIQUE not returned by kernel\n");
			close(fd);
			return 1;
		}


		sm =3D sys_statmount(stx.stx_mnt_id, 0, STATMOUNT_MNT_BASIC | STATMOUNT_M=
NT_UIDMAP, 0);
		if (!sm) {
			close(fd);
			return 1;
		}

		if (sm->mask & STATMOUNT_MNT_UIDMAP)
			printf("this should not have happened.\n");
		else
			printf("%llu is not an idmapped mount\n", sm->mnt_id);

		close(fd);
		return 0;
	}

>=20
> Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
> ---
> Hey Alex!
>=20
> My understanding of how statmount() differentiated between idmapped
> mounts and non-idmapped mounts was incorrect.

Thanks for the correction!

> This patch fixes the
> incorrect documentation introduced as a result.

Thanks!  Would you mind documenting all the commits that we're fixing?
Please use Fixes tags.  See
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/patches/trailer#n16>
and
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/git#n46>.

>=20
> Thanks,
> Bhavik
>=20
>  man/man2/statmount.2 | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
> index 42ca902d9..40a07181b 100644
> --- a/man/man2/statmount.2
> +++ b/man/man2/statmount.2
> @@ -356,7 +356,8 @@ .SS The returned information
>  If
>  .I smbuf.mask
>  has STATMOUNT_UIDMAP set and this field is 0,
> -the mount is not an idmapped mount.
> +then uid mappings applied on the mount cannot be resolved in the user na=
mespace
> +of the caller.

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | awk '/Use semantic newlines/,/^$/'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

In this case, I'd break the line between 'mount\ncannot'.


Have a lovely night!
Alex

>  .TP
>  .IR smbuf.mnt_uidmap " (since Linux 6.15)"
>  The offset to the location in the
> @@ -372,7 +373,8 @@ .SS The returned information
>  If
>  .I smbuf.mask
>  has STATMOUNT_GIDMAP set and this field is 0,
> -the mount is not an idmapped mount.
> +then gid mappings applied on the mount cannot be resolved in the user na=
mespace
> +of the caller.
>  .TP
>  .IR smbuf.mnt_gidmap " (since Linux 6.15)"
>  The offset to the location in the
> --=20
> 2.53.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--4f3pyo35xnacq4ub
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmm59kIACgkQ64mZXMKQ
wqkoXg/+PxYHMV7M26Gr1CklDdUSqkVhEUUe2+fu+oVVqdTfcCumxCB4HpOzm+qa
+qTwI8yweTDMtvwiwQGZvnZf/FRc9H1HbmElC7wqMomb+GRiO5fj1V4mM06uWKpu
5bi+FLFGxfttLbwJaPComqqerIZNkEXNPYmFxW3ZfQ6pNJel6CBI5GRBaRsac92x
XK2QT2rIEc8ckX9VCE81U6sGmjga74VEPnCo3hcfrKWHqqIvMZHKdZeDzk+FR2rE
LNzjxc0ax4FV39R6SCeuQ3M06Dzfzkk9RNZmVXM+kLURv9AUPLQbptJW/ORcH/38
xCrK8dMAcTsJ3ueGO6ia2ohyjLJEXWfSmPvCPBr8iGmwTG+ZS07+L9ZGvVMDg1yn
BVSMW9Iu26rGUlF1ZS4o4cilh6dBqu1Wed0vD06irzQsKMkKV6d0Hp3L3/Cd/NCR
7XWotbaIrodLc+2xZ9XdrrNxXnH+GC5q5YEmGWepoa8qv3yKDeAZ32Uem+yzT+16
xbgDYtVFvDxftSFQcAA5EvVFEHLohYKL5cECdhPi5mLN8FHUfSluMLeQDu7E8FrO
iNlRs87MgR1wrgvPtE0LShwratDrP79nD9wQXZMhgp7aQ37SvU5MIDLcs23gGyj4
vkwLPlq05YkDjCCOo63UkEYCl+3h/BKORurCWRMgCiZe79h4zf0=
=wWsd
-----END PGP SIGNATURE-----

--4f3pyo35xnacq4ub--

