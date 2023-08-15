Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D97477D09D
	for <lists+linux-man@lfdr.de>; Tue, 15 Aug 2023 19:08:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238611AbjHORHm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Aug 2023 13:07:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238640AbjHORHP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Aug 2023 13:07:15 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AFE11BC3
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 10:07:14 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DDBCC6594B
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 17:07:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1000DC433C7;
        Tue, 15 Aug 2023 17:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692119233;
        bh=2RkpkcDUEaWFCYUPcwa57ntRGddGbWXZYJtm98+pEHY=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=iZ6kqLPOjTFRSAprbBeRVzCYSzvOg31iE4gKj0QbJhGngFiVGWPfmT5jkwthmqCpj
         zcHPX+y6YX5JXePRbACtRXNYaMLR0ebCD/0QqplOK5uOX3vzKfeIuoXXKpnZW53K83
         XiFJhNUfWaj5oaYsqUKrZ1nI1ds4BEPKSAgmJ3jZRkBicrWxh+6cLgvhOll7cSHfoh
         9dn5luhcXSVuQlj+fDkNL8gMvyQ4wJehO1l6VmkhmdJ6cnlC14Fu8L1qDkOcLSfO/r
         3ktSun1s3D6jepw+7HgO/+9i+a4Lrmg4eTbXPk1WFo51ywlAHJG1d1g5pH1qo7IgDz
         uBet+zBZIAt/w==
Message-ID: <36957e8c-f971-6e2d-028c-f856315627f6@kernel.org>
Date:   Tue, 15 Aug 2023 19:07:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: proc(5)'s sashimi
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack@google.com>,
        linux-man <linux-man@vger.kernel.org>,
        Oskari Pirhonen <xxc3ncoredxx@gmail.com>
References: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org>
 <ZNrsvD9KCmaBEYnO@dj3ntoo> <ZNtkgXnQVs2pF8f7@google.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        Colin Watson <cjwatson@debian.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <ZNtkgXnQVs2pF8f7@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7X32SRM0JDhmcDjM7YsbKpnI"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------7X32SRM0JDhmcDjM7YsbKpnI
Content-Type: multipart/mixed; boundary="------------L5RPXkYXHd9g5hVWe2YAMQEv";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack@google.com>,
 linux-man <linux-man@vger.kernel.org>,
 Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Cc: Ingo Schwarze <schwarze@usta.de>, Colin Watson <cjwatson@debian.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <36957e8c-f971-6e2d-028c-f856315627f6@kernel.org>
Subject: Re: proc(5)'s sashimi
References: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org>
 <ZNrsvD9KCmaBEYnO@dj3ntoo> <ZNtkgXnQVs2pF8f7@google.com>
In-Reply-To: <ZNtkgXnQVs2pF8f7@google.com>

--------------L5RPXkYXHd9g5hVWe2YAMQEv
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi G=C3=BCnther! Oskari!

On 2023-08-15 13:41, G=C3=BCnther Noack wrote:
> On Mon, Aug 14, 2023 at 10:10:52PM -0500, Oskari Pirhonen wrote:
>> On Mon, Aug 14, 2023 at 16:06:16 +0200, Alejandro Colomar wrote:
>> OTTOMH, I can think of some prior art WRT to "namespaced/split man
>> pages" in at least git, btrfs-progs, and as of recently it seems,
>> cryptsetup.
>=20
> There are also the ioctl_* man pages which are similarly split up
> and which are prior art within the man-pages repo.

Good reminder!  Yup.

>=20
> It seems like a good idea to split up proc(5). =F0=9F=91=8D
>=20
> =E2=80=94G=C3=BCnther
>=20

Thanks :)


On 2023-08-15 05:10, Oskari Pirhonen wrote:
> On Mon, Aug 14, 2023 at 16:06:16 +0200, Alejandro Colomar wrote:
>> Hi!
>>
>> The day has come to cut the proc(5) tuna fish in very little pieces.
>=20
> This is a great idea. Large man pages, while no problem for me
> personally, are more often than not very intimidating and overwhelming
> for newcomers.

Thank you too :)

>=20
>> As a first step, I'm pasting the contents of proc(5) into little
>> files, without changing any contents (not even the formatting).  For
>> example see the two files at the bottom of this email.
>>
>> I'd like to hear any comments before pushing such a change to the repo=
=2E
>> I'll soon post a branch called 'proc' to my repo (I'll ping when it's
>> done), so you can observe the changes).
>>
>> One of the questions I have at the moment is how should we call the
>> pages, and what should we write in the TH and NAME.  Branden, do you
>> have any comments on that?  I used underscores for the page title and
>> file name, but for the NAME I used slashes (so the actual name of the
>> interface).  I didn't do any italics in the name, though, so /pid/ is
>> no special in the name.
>>
>=20
> OTTOMH, I can think of some prior art WRT to "namespaced/split man
> pages" in at least git, btrfs-progs, and as of recently it seems,
> cryptsetup. Some samples:
>=20
>=20

I find the case of programs (man1) slightly different.  The point is
that the command syntax is with a space, man man(1) happens to allow
a space to be used as if it were a space:

	$ man -w git range-diff
	/usr/share/man/man1/git-range-diff.1

which nicely fits with the command syntax:

	$ git range-diff

In the case of slashes, we have a deeper problem, which is that
there's no way to have a slash in the actual pathname of a page,
since the man sections are flat.

man(1) doesn't seem to be able to index according to the NAME
within the page if it has slashes (or I didn't know how to make it
work).  Also, since man accepts a pathname in place of the page
name, `man /proc` would be ambiguous, so we really can't have
slashes there.  '_' and '-' are equal to me, and in general, I
tend to favour '_' in identifiers all else equal (maybe it's
Branden's fault, or maybe it's C).

[...]

>=20
> So, for these examples, perhaps proc-pid-gid-map.5 and proc-pid-attr.5
> to fit in with our friends from above. Similarly for the title. I think=

> NAME should match how it exists on the filesystem (so leave that how yo=
u
> have it now).
>=20
> The /proc/pid/gid_map is an interesting case. The file itself has an
> underscore, but having mixed dash and underscore (proc-pid-gid_map)
> feels ugly even though it's technically more correct.

I'd like to respect characters that can be respected.  Since '_' is in
the name of the actual interface, I'd like to respect it in the manual
page.

> A potential
> solution to that problem is to have the man page be proc-pid-gid-map.5
> and install a proc-pid-gid_map.5 symlink pointing to the page. Or vice
> versa.

BTW, there' are /proc interfaces that have a '-' in their name:
/proc/key-users

>=20
> - Oskari
>=20
> PS: A special shoutout goes to git. The fact that `git help $THING`
> pulls up the man page for git-$THING, combined  with `git help` alone
> providing some nice starting points, is a huge plus when it comes to th=
e
> discoverability of its documentation.

Yup, git(1)'s manual pages are quite nicely organized.  A rare thing,
I'd say.

>=20
> So in case whoever wrote that happens to read this -- many thanks <3

+1

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------L5RPXkYXHd9g5hVWe2YAMQEv--

--------------7X32SRM0JDhmcDjM7YsbKpnI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTbsLcACgkQnowa+77/
2zJwixAAp1UCZCFVvu35LhPZHvL0/XaT5GhcYc6aaU7eNpYZOvV+TZ1/m+/vZcvk
zMqLZOi9EEI++jQW76NHDPSTBP2Q6Op1gmTm4Fl5I7xVIp6c1vgBqH4g1HgBzwmD
a54to2l3X6STetnNyKdVjJMfrU0ud7FtIZSHGkqLgXBp0MJ5tlP84ZCCv3dDuoxr
VKbpjqxaC5FFTajHz14B674ndnW4p33InGCBQ3sAY/UWj3vi4KjysLJEHJF95JT6
pUOh+99ljqkl0rsQfdKK8qNkscmIWR94rZGV0YtrL7GbyibIi5jqPnxvvPAKaWGO
WmMGVjNfuzTu5s05QoXgCSG6i8q44SahxO82yNsG8dV2hlGiUt+nlrj5Ebsdplx9
bGXdhJkjrJkXfA922zDmCctrkqbRMvlm3zlrBFVCeUfY56xSCKsFYhwKzfkFaYW4
zZ3xG0gI/9lUTFXgBVCDISneUE3x67LSAF8ipZg2D1NTCKgSnTGAfkCs30d7ngs9
UbtGkFSEfoDeB0OBvjovvuf5Y+3Hd8rhvteeYUDL1r/DfW/8RjaQoQfvbyK09epQ
1lu3g/LwC59BZyCTjT7s4jRW0InKNE1KPm9Vwdz/KzH0MYTvxT95VVEpK5HFW5aB
AeMwhoZY04mV50YaM0CcsyVIACh+0vIQeOMsTNHXfv+An4+c1MQ=
=NjM0
-----END PGP SIGNATURE-----

--------------7X32SRM0JDhmcDjM7YsbKpnI--
