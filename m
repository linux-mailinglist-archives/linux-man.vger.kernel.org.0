Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5306B77C63A
	for <lists+linux-man@lfdr.de>; Tue, 15 Aug 2023 05:14:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233350AbjHODOH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Aug 2023 23:14:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233905AbjHODLF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Aug 2023 23:11:05 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47DD81987
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 20:11:01 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4fe4762173bso8159186e87.3
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 20:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692069059; x=1692673859;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Kt0ghej50ncZJOrs0AUdLQrA6J4yyt5WvdGvfix15Y=;
        b=G7w5azKNvNapISQ9Pwnld5uRk59oLGTsjIXhE4g0zq3XCGYbu9yqYtvulo2B/hT7WW
         WMnln1QDRbeue4LJCHT23v94Y0OWCC30wwRedzroN0aD6IwQDubzO0Gr8FDEhiivwOMg
         AhUMOprCYqWg2gKQlbcWco59FRe5TL6oPMffApyqI7amT8duM/oA7GUkOeSATgwlSNh0
         HBSRBybgE7Ed5KF6P6XXV384TfM2p7YtPI5Q8CYSGgohsQpclE59283Ynr6HeTh8FMiw
         B4/GlBbz5U7J6/jIhwjELoS3Q982eAiw1sESoAMmXN74UAm+RhDhhfecd+d/T0xhEsRj
         q8ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692069059; x=1692673859;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5Kt0ghej50ncZJOrs0AUdLQrA6J4yyt5WvdGvfix15Y=;
        b=il9wJ/tUZbv86GS3hKzDsk/l2ki1pcs2Xj7XbetpTBro83Klg7ornot2aDWFSb4hBe
         bSh/VbwsPJqitp4YdSyRDbht9OJH4OYWh8Fxg693R8ifD/c+grjWSHfWEe89YPQKxw7l
         kbvv0oOuWHIObppW1+k+/CFQIj5fsHU4PaA6pTFl7ZMzN8fpx54GnmHGpLxbx6b2Ahu7
         WGbYgArikGUAgJ4xy6SZshe/9TyqOvL6bEorc9T5trbeMu95/Y0uzok3hW8xN1xPQ5To
         yzQ2F+tOv+G4gGS2r0iVDQkWvvo4u4xTvL6TFfxpxztY59GFXaPZ5ky//i0NT8OZXmbP
         CztQ==
X-Gm-Message-State: AOJu0YwQIuKfzr5eVLV0jUfRnRhIzI54iZZlGw+CWvFD3Elm/kX8l3mI
        xg4dpe7+VJf+jjyifGAQ47c=
X-Google-Smtp-Source: AGHT+IE1RSjmkQRHfWRxFyC1nDhwIsDuJu6FSnlQXVzReBZG21Jf5d6bNr4Padda2AVXU9jFS5FNlw==
X-Received: by 2002:a05:6512:12cf:b0:4f7:6966:36fb with SMTP id p15-20020a05651212cf00b004f7696636fbmr8157144lfg.12.1692069058475;
        Mon, 14 Aug 2023 20:10:58 -0700 (PDT)
Received: from dj3ntoo (140.sub-75-226-201.myvzw.com. [75.226.201.140])
        by smtp.gmail.com with ESMTPSA id x6-20020aa7dac6000000b0052241b8fd0bsm6267913eds.29.2023.08.14.20.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Aug 2023 20:10:57 -0700 (PDT)
Date:   Mon, 14 Aug 2023 22:10:52 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: proc(5)'s sashimi
Message-ID: <ZNrsvD9KCmaBEYnO@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
        linux-man <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="vnIr2Nn6RNPmH21o"
Content-Disposition: inline
In-Reply-To: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_FILL_THIS_FORM_SHORT
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vnIr2Nn6RNPmH21o
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 14, 2023 at 16:06:16 +0200, Alejandro Colomar wrote:
> Hi!
>=20
> The day has come to cut the proc(5) tuna fish in very little pieces.

This is a great idea. Large man pages, while no problem for me
personally, are more often than not very intimidating and overwhelming
for newcomers.

> As a first step, I'm pasting the contents of proc(5) into little
> files, without changing any contents (not even the formatting).  For
> example see the two files at the bottom of this email.
>=20
> I'd like to hear any comments before pushing such a change to the repo.
> I'll soon post a branch called 'proc' to my repo (I'll ping when it's
> done), so you can observe the changes).
>=20
> One of the questions I have at the moment is how should we call the
> pages, and what should we write in the TH and NAME.  Branden, do you
> have any comments on that?  I used underscores for the page title and
> file name, but for the NAME I used slashes (so the actual name of the
> interface).  I didn't do any italics in the name, though, so /pid/ is
> no special in the name.
>=20

OTTOMH, I can think of some prior art WRT to "namespaced/split man
pages" in at least git, btrfs-progs, and as of recently it seems,
cryptsetup. Some samples:


$ MANWIDTH=3D72 man git-range-diff | head
GIT-RANGE-DIFF(1)             Git Manual             GIT-RANGE-DIFF(1)

NAME
       git-range-diff - Compare two commit ranges (e.g. two versions
       of a branch)

SYNOPSIS
       git range-diff [--color=3D[<when>]] [--no-color] [<diff-options>]
               [--no-dual-color] [--creation-factor=3D<factor>]
               [--left-only | --right-only]


$ MANWIDTH=3D72 man btrfs-send | head
BTRFS-SEND(8)                    BTRFS                   BTRFS-SEND(8)

NAME
       btrfs-send - generate a stream of changes between two subvolume
       snapshots

SYNOPSIS
       btrfs send [-ve] [-p <parent>] [-c <clone-src>] [-f  <outfile>]
       <subvol> [<subvol>...]


$ MANWIDTH=3D72 man cryptsetup-resize | head
CRYPTSETUP-RESIZE(8)     Maintenance Commands     CRYPTSETUP-RESIZE(8)

NAME
       cryptsetup-resize - resize an active mapping

SYNOPSIS
       cryptsetup resize [<options>] <name>

DESCRIPTION
       Resizes an active mapping <name>.


> Cheers,
> Alex
>=20
> ---
>=20
> $ MANWIDTH=3D72 man ./proc_pid_gid_map.5 | cat
> proc_pid_gid_map(5)       File Formats Manual      proc_pid_gid_map(5)
>=20
> NAME
>      /proc/pid/gid_map - group ID mappings
>=20
> DESCRIPTION
>      /proc/pid/gid_map (since Linux 3.5)
>             See user_namespaces(7).
>=20
> SEE ALSO
>      proc(5)
>=20
> Linux man=E2=80=90pages (unreleased)    (date)             proc_pid_gid_m=
ap(5)
>=20
>=20
> $ MANWIDTH=3D72 man ./proc_pid_attr.5 | cat
> proc_pid_attr(5)          File Formats Manual         proc_pid_attr(5)
>=20
> NAME
>      /proc/pid/attr/ - security=E2=80=90related attributes
>=20

So, for these examples, perhaps proc-pid-gid-map.5 and proc-pid-attr.5
to fit in with our friends from above. Similarly for the title. I think
NAME should match how it exists on the filesystem (so leave that how you
have it now).

The /proc/pid/gid_map is an interesting case. The file itself has an
underscore, but having mixed dash and underscore (proc-pid-gid_map)
feels ugly even though it's technically more correct. A potential
solution to that problem is to have the man page be proc-pid-gid-map.5
and install a proc-pid-gid_map.5 symlink pointing to the page. Or vice
versa.

- Oskari

PS: A special shoutout goes to git. The fact that `git help $THING`
pulls up the man page for git-$THING, combined  with `git help` alone
providing some nice starting points, is a huge plus when it comes to the
discoverability of its documentation.

So in case whoever wrote that happens to read this -- many thanks <3

--vnIr2Nn6RNPmH21o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZNrsuAAKCRCp8he9GGIf
ET0XAQCL/gTJyaavqu0M6nqBgZzSk1f+UorRrUREuJ4HjKJpyQD+NUFrGAwJOTEp
tehBDkmZjM3bBbRpoQ+7RWBsGyRJAQo=
=og+V
-----END PGP SIGNATURE-----

--vnIr2Nn6RNPmH21o--
