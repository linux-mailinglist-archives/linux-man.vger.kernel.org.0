Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3F5577BAF4
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 16:07:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229612AbjHNOG4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Aug 2023 10:06:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231741AbjHNOGb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Aug 2023 10:06:31 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 374BB1703
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 07:06:20 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C3E67630FB
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 14:06:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A637AC433C7;
        Mon, 14 Aug 2023 14:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692021979;
        bh=PtUwUrzhYWO9S4DTTKijVaGgmnX3ej8Db6Qzgao+W1M=;
        h=Date:To:Cc:From:Subject:From;
        b=LclG8fgHkpHevazIXDY+H3m2ORF68YCLx84bCpxPwaXBchqv7iM4cRlwJruBLYJ79
         jj7ae5VfHq2s8sK3UB12Wr+4lHjFY/1UHA/fSdHbegrgdGhpzO0j7FvJ7ZilVyWs9b
         SEj9wY78umWJInhgQ2ryrf4Kp/QXfR22KByn5ThUKT0MJ8JOvFksv7jWb4HUdphDVT
         PcEOGn+rdpPe88uJ1WmSzMbQzT3iYjXt/x4tbXEMLMc22bDgfI58sLIwx18wu5VwCD
         Y+A+M73dBnd1nTOB6KvYIF8QKFakczDzyCrjTxLZsXjn2qbdTlT6D/gHZaAc7ShCvJ
         o7Ond6hbqUJ7g==
Message-ID: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org>
Date:   Mon, 14 Aug 2023 16:06:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Content-Language: en-US
To:     linux-man <linux-man@vger.kernel.org>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Subject: proc(5)'s sashimi
Organization: Linux
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------vFR8if040GXySffPoUPCgieq"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------vFR8if040GXySffPoUPCgieq
Content-Type: multipart/mixed; boundary="------------eqVMXJ9lKoTIxYkmH10EZowS";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: linux-man <linux-man@vger.kernel.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org>
Subject: proc(5)'s sashimi

--------------eqVMXJ9lKoTIxYkmH10EZowS
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

The day has come to cut the proc(5) tuna fish in very little pieces.
As a first step, I'm pasting the contents of proc(5) into little
files, without changing any contents (not even the formatting).  For
example see the two files at the bottom of this email.

I'd like to hear any comments before pushing such a change to the repo.
I'll soon post a branch called 'proc' to my repo (I'll ping when it's
done), so you can observe the changes).

One of the questions I have at the moment is how should we call the
pages, and what should we write in the TH and NAME.  Branden, do you
have any comments on that?  I used underscores for the page title and
file name, but for the NAME I used slashes (so the actual name of the
interface).  I didn't do any italics in the name, though, so /pid/ is
no special in the name.

Cheers,
Alex

---

$ MANWIDTH=3D72 man ./proc_pid_gid_map.5 | cat
proc_pid_gid_map(5)       File Formats Manual      proc_pid_gid_map(5)

NAME
     /proc/pid/gid_map - group ID mappings

DESCRIPTION
     /proc/pid/gid_map (since Linux 3.5)
            See user_namespaces(7).

SEE ALSO
     proc(5)

Linux man=E2=80=90pages (unreleased)    (date)             proc_pid_gid_m=
ap(5)


$ MANWIDTH=3D72 man ./proc_pid_attr.5 | cat
proc_pid_attr(5)          File Formats Manual         proc_pid_attr(5)

NAME
     /proc/pid/attr/ - security=E2=80=90related attributes

DESCRIPTION
     /proc/pid/attr/
            The  files  in  this directory provide an API for security
            modules.  The contents of this directory  are  files  that
            can  be  read and written in order to set security=E2=80=90re=
lated
            attributes.  This directory was added to support  SELinux,
            but  the  intention  was that the API be general enough to
            support other security modules.  For the purpose of expla=E2=80=
=90
            nation, examples of how SELinux uses these files are  pro=E2=80=
=90
            vided below.

            This  directory  is present only if the kernel was config=E2=80=
=90
            ured with CONFIG_SECURITY.

     /proc/pid/attr/current (since Linux 2.6.0)
            The contents of this file represent the  current  security
            attributes of the process.

            In  SELinux, this file is used to get the security context
            of a process.  Prior to Linux 2.6.11, this file could  not
            be  used  to  set the security context (a write was always
            denied), since SELinux limited  process  security  transi=E2=80=
=90
            tions    to    execve(2)    (see    the   description   of
            /proc/pid/attr/exec, below).  Since Linux 2.6.11,  SELinux
            lifted  this restriction and began supporting "set" opera=E2=80=
=90
            tions via writes to this node if authorized by policy, al=E2=80=
=90
            though use of this operation is only suitable for applica=E2=80=
=90
            tions that are trusted to maintain any desired  separation
            between the old and new security contexts.

            Prior  to  Linux  2.6.28,  SELinux  did  not allow threads
            within a multithreaded process to set their security  con=E2=80=
=90
            text  via  this  node  as  it would yield an inconsistency
            among the security contexts of  the  threads  sharing  the
            same  memory  space.   Since  Linux 2.6.28, SELinux lifted
            this restriction and began supporting "set" operations for
            threads within a multithreaded process if the new security
            context is bounded by the old security context, where  the
            bounded  relation is defined in policy and guarantees that
            the new security context has a subset of  the  permissions
            of the old security context.

            Other  security modules may choose to support "set" opera=E2=80=
=90
            tions via writes to this node.

     /proc/pid/attr/exec (since Linux 2.6.0)
            This file represents  the  attributes  to  assign  to  the
            process upon a subsequent execve(2).

            In  SELinux, this is needed to support role/domain transi=E2=80=
=90
            tions, and execve(2) is the preferred point to  make  such
            transitions because it offers better control over the ini=E2=80=
=90
            tialization  of  the process in the new security label and
            the inheritance of state.  In SELinux, this  attribute  is
            reset  on execve(2) so that the new program reverts to the
            default behavior for any execve(2) calls that it may make.
            In   SELinux,   a   process   can   set   only   its   own
            /proc/pid/attr/exec attribute.

     /proc/pid/attr/fscreate (since Linux 2.6.0)
            This  file  represents  the  attributes to assign to files
            created by subsequent calls  to  open(2),  mkdir(2),  sym=E2=80=
=90
            link(2), and mknod(2)

            SELinux  employs  this  file to support creation of a file
            (using the aforementioned system calls) in a secure state,
            so that there is no risk of inappropriate access being ob=E2=80=
=90
            tained between the time of creation and the time that  at=E2=80=
=90
            tributes  are set.  In SELinux, this attribute is reset on
            execve(2), so that the new program reverts to the  default
            behavior  for any file creation calls it may make, but the
            attribute will persist across multiple file creation calls
            within a  program  unless  it  is  explicitly  reset.   In
            SELinux,    a    process    can    set    only   its   own
            /proc/pid/attr/fscreate attribute.

     /proc/pid/attr/keycreate (since Linux 2.6.18)
            If a process writes a security context into this file, all
            subsequently created keys  (add_key(2))  will  be  labeled
            with  this context.  For further information, see the ker=E2=80=
=90
            nel source file  Documentation/security/keys/core.rst  (or
            file Documentation/security/keys.txt between Linux 3.0 and
            Linux 4.13, or Documentation/keys.txt before Linux 3.0).

     /proc/pid/attr/prev (since Linux 2.6.0)
            This file contains the security context of the process be=E2=80=
=90
            fore  the  last  execve(2); that is, the previous value of
            /proc/pid/attr/current.

     /proc/pid/attr/socketcreate (since Linux 2.6.18)
            If a process writes a security context into this file, all
            subsequently created sockets will  be  labeled  with  this
            context.

SEE ALSO
     proc(5)

Linux man=E2=80=90pages (unreleased)    (date)                proc_pid_at=
tr(5)

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------eqVMXJ9lKoTIxYkmH10EZowS--

--------------vFR8if040GXySffPoUPCgieq
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTaNNgACgkQnowa+77/
2zK9NA//bm2hDiQ/D3B9xSEhZjWRnGv6nE/BMohn2Vezbo882+a8oV6o4G7hYMeX
EmreBepJu7ShHpjHbREM+ANakmgr6E3i70tQaZI1HM6qaczyxHwt+7Kc+McJdUHD
aKA4JAwI4ZzvtamZV+TtuYCN839aFmwSlpjP+ZdS0ESJl4uJ974TQYSBVZaq1w7Z
PjTuTUzAuwhuU+sr4JQ+Axa6gSRaCSbGVa/frf9CQtoUCpOD2fn4ws1uiHa0cmiQ
AnCBP9r78YtgSsSAd7w5t9UII+bGMfqAdhq3y4+q9Fd0MEePqEzUTr9vwHXWbqpm
3L7+2uogrXP9pzs7tZ2t3YJz3A2eVc1csz7aLAhmk1OHE4CzRw56PPGDOnKrj+TQ
JmPsadJn5NKaePj3jJUT5SGlNcwH2bQRXuLYhyoiK7rSc/u7P0s31tfzt1po62Op
F67PzS5sgVLTxJ/8dqPMD6CNeD1SUJ90Ml/2m6DhKtb7XBhDeDFmS3RehCYcDKdI
vvXYmI7+vqVXUDJ7+WqTFkCQG+Q9gq+Hx17tM7AVnMvq8On1B4P9t/cUiGYdCz0w
33qa2xaJsJ3g55EDlQzAEZXwomQ6oxQSp+fB5pihX38CD1L0MVQei0G9rV2uH1DC
uEVtp9GRC/VuEgOG+8CSbjJxE4dWcklDNZKEVQbY5790DEQfl+o=
=hrOl
-----END PGP SIGNATURE-----

--------------vFR8if040GXySffPoUPCgieq--
