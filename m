Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF96777A184
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 19:51:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229626AbjHLRvo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 13:51:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229862AbjHLRvn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 13:51:43 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B83C81993
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 10:51:46 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4F3A861CB0
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 17:51:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35B8BC433C7;
        Sat, 12 Aug 2023 17:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691862705;
        bh=FYO1zCcLhuCdtBBoYySStYlSxKoqdrqwRsXoCGf0Rl0=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=Nf4bOkPp1YbW5bpvspeZOrI1dbnxT++Vl5uZQgH6rT+ZzZJGiZFPkJ/bbgl/HVdtk
         qmQLZkIyql0paWUsnoqZSFNnC0cRZvXn/hs5S2nJe4D/zm7WijdBMhq5HBbqfQxMk3
         ZCi6UYGtv3v6Ft620sJDkliVv/1xkgCspFxQjn5qLSyWg93onCQEeWmKn8AirEGMEt
         kv4dyaNAjRVnixpSQcVIfacCmlLKcVKjj7eLkvo4JNoLi1Oe6A0RQWK3wEmhTXLmsh
         +y/sEW/o+A35L7Rm+Il2kyCOBfa+MCxQT1zu17Ryl0Y6uXSTZGAhjnrY/hRIItY3P1
         sH87VEfWlAw8A==
Message-ID: <923b82cd-9bfe-44bd-1d8b-26fa35799d64@kernel.org>
Date:   Sat, 12 Aug 2023 19:51:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] clone.2: Fix the erroneous statement about CLONE_NEWPID
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     Sargun Dhillon <sargun@sargun.me>
Cc:     linux-man@vger.kernel.org
References: <20230810022603.947583-1-sargun@sargun.me>
 <69c6a263-3578-2d1e-23c0-6a8e9c35602f@kernel.org>
Organization: Linux
In-Reply-To: <69c6a263-3578-2d1e-23c0-6a8e9c35602f@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------SynZP8Rgtt7NdgqLnzxgufNY"
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------SynZP8Rgtt7NdgqLnzxgufNY
Content-Type: multipart/mixed; boundary="------------FLQD4AzYYHsevH1VtPDoVcZY";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Sargun Dhillon <sargun@sargun.me>
Cc: linux-man@vger.kernel.org
Message-ID: <923b82cd-9bfe-44bd-1d8b-26fa35799d64@kernel.org>
Subject: Re: [PATCH] clone.2: Fix the erroneous statement about CLONE_NEWPID
References: <20230810022603.947583-1-sargun@sargun.me>
 <69c6a263-3578-2d1e-23c0-6a8e9c35602f@kernel.org>
In-Reply-To: <69c6a263-3578-2d1e-23c0-6a8e9c35602f@kernel.org>

--------------FLQD4AzYYHsevH1VtPDoVcZY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-12 19:48, Alejandro Colomar wrote:
> Hello Sargun,
>=20
> On 2023-08-10 04:26, Sargun Dhillon wrote:
>> It appears like the documentation is based on out of date information =
in
>> regards to using CLONE_NEWPID and CLONE_PARENT together.
>>
>> For example, in this test program, one can see that it works:
>>
>> static pid_t sys_clone3(struct clone_args *args)
>> {
>> 	fflush(stdout);
>> 	fflush(stderr);
>> 	return syscall(__NR_clone3, args, sizeof(*args));
>> }
>>
>> int main() {
>> 	struct clone_args args =3D {
>> 		.flags =3D CLONE_PARENT | CLONE_NEWPID,
>> 	};
>> 	int ret;
>>
>> 	printf("The main program is running with pid: %d, and ppid: %d\n", ge=
tpid(), getppid());
>> 	ret =3D sys_clone3(&args);
>> 	assert(ret !=3D -1);
>> 	if (ret =3D=3D 0) {
>> 		printf("This is the child, running with pid: %d, and ppid: %d\n", ge=
tpid(), getppid());
>> 		_exit(0);
>=20
> Do we really need _exit(3)?  Why not exit(3)?  There are no atexit(3)
> or on_exit(3) handlers registered, so the only difference I expect is
> the flushing of stdio(3) streams, which _exit(3) doesn't perform but
> exit(3) does.  So exit(3) seems more appropriate, isn't it?
>=20
>> 	}
>>
>> 	return 0;
>> }
>=20
> Thanks for the example program!  It helps a lot with the review.  :)
>=20
>>
>> This test program (successfully) outputs:
>> The main program is running with pid: 648411, and ppid: 648397
>> This is the child, running with pid: 1, and ppid: 0

Does this depend on any recent kernel version?  In my system,
the assertion fails.


$ cat clone.c=20
#include <assert.h>
#include <linux/sched.h>
#include <sched.h>
#include <stdio.h>
#include <sys/syscall.h>
#include <unistd.h>

static pid_t
sys_clone3(struct clone_args *args)
{
	fflush(stdout);
	fflush(stderr);
	return syscall(SYS_clone3, args, sizeof(*args));
}

int
main(void)
{
	int                ret;
	struct clone_args  args =3D { .flags =3D CLONE_PARENT | CLONE_NEWPID, };=


	printf("main program:  pid: %d, and ppid: %d\n", getpid(), getppid());
	ret =3D sys_clone3(&args);
	assert(ret !=3D -1);
	if (ret =3D=3D 0) {
		printf("This is the child, running with pid: %d, and ppid: %d\n", getpi=
d(), getppid());
		_exit(0);
	}

	return 0;
}

$ cc -Wall -Wextra clone.c=20
$ ./a.out=20
main program:  pid: 18783, and ppid: 18703
a.out: clone.c:24: main: Assertion `ret !=3D -1' failed.
Aborted


>>
>> Signed-off-by: Sargun Dhillon <sargun@sargun.me>
>> ---
>>  man2/clone.2 | 4 +---
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/man2/clone.2 b/man2/clone.2
>> index 4c5b4ac6b..96ad24b95 100644
>> --- a/man2/clone.2
>> +++ b/man2/clone.2
>> @@ -736,9 +736,7 @@ Only a privileged process
>>  can employ
>>  .BR CLONE_NEWPID .
>>  This flag can't be specified in conjunction with
>> -.B CLONE_THREAD
>> -or
>> -.BR CLONE_PARENT .
>> +.B CLONE_THREAD.
>=20
> You'll need BR here, and the space before the period; otherwise,
> the period will be in bold, which we don't want (as it's not part
> of the identifier).
>=20
> Thanks,
> Alex
>=20
>>  .TP
>>  .B CLONE_NEWUSER
>>  (This flag first became meaningful for
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------FLQD4AzYYHsevH1VtPDoVcZY--

--------------SynZP8Rgtt7NdgqLnzxgufNY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTXxq8ACgkQnowa+77/
2zI5/g//afO/s2fy3gu8wFg3x8iPZNgaf+ObuGLV3HzZ0wZmC+dugk2Zkhx0tuTo
4HsS2kYpvZXLUWOoPNI5YvjfEwMAsRhTCnvOLn7CtfA+SmV/DfH3tHPojuqXCnya
EY4cEpidsqDgdKxLiGT5GNvZlvfrzPXv6UgStePaNT2BlOBAYayfSvEW37gAN3UL
tBhG/KALBsqAvZoxGd6zOrszOFVl6SVrDO+NqW19qDrjRaUAZ7EDGfpVLIJdLvj5
0to4Bz8oP11CiQL+fm808A5cN1GUyjIK1eSLXb2TZW1QUw3rHG395alVx7He5pLr
7vKW0I0SEG4EoF30/bTGbzJEOs1yEVoHuOZ53kmZzdMTJxiVzOSNH6z1BcUukpga
7LCgJp3zyeVMXCU2/mMQHaWZrY40TJVJ7QnsXX1PV6tqou2nQ0FkTodJ0OZkHYyn
MSBzu4GwDypfda4us3m5detVJmz9sEjUTH1p1eIG7UcOE3it38Ku+NpaegeIwx8f
ye8iZ8iU4mbBQy5P4dqGKcB094hRBVIrIbybOXV0xxmVl4dBzVYJhMwolmNWV2GJ
Tm/XsE5dWnPfTWi/mPeikfByAhbz+nIQbQccy2vAzL3rJaR7BTCREw9rhh0AMxZl
Fm40WANF1JhdhDx5LXhOU3KBsntB/ijp3XXlF/kAlTqj09MS1ek=
=2c7K
-----END PGP SIGNATURE-----

--------------SynZP8Rgtt7NdgqLnzxgufNY--
