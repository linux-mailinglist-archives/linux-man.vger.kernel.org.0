Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DAAE77125DC
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 13:46:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242548AbjEZLqt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 May 2023 07:46:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236715AbjEZLqs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 May 2023 07:46:48 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D084F194
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 04:46:44 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f60804faf4so4515665e9.3
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 04:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685101603; x=1687693603;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0La4SCg3ZqHTaNqxLNwiMMsOsU7rGSsbjC2p4HSYxp0=;
        b=B79Ju8RSCQt68cLWoXey02kN7NmYm3XP8so/BYQ16a3xLEnFVkZ++0TkIIi7nNiMC4
         56pE0qVGSSHkZ/G4bLPUl2+6criz55ApPDDLKmfftkY9A1P2z6SPd6sALdY0OuMbjUk1
         HfXX5tTi1E0r4669VAQc8OPvFMfcPKzDBLfh82kAy26iCUCq3IDLP6PJmAbgte/nWpP3
         zVV/CyKOZlmP2ZCvxRLbdGPjlLADJ9o2qtMExpOcs4J/uPDFFv+wEQsr/Fm3qMnaarFy
         9Uysf34znZyptoD5FRiCMJFTQ+C6tAyIhGAs7nBjeydDDOwrzzKjZ4YZm7BfHXFL/nd5
         bnjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685101603; x=1687693603;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0La4SCg3ZqHTaNqxLNwiMMsOsU7rGSsbjC2p4HSYxp0=;
        b=k1B+/9WQptDwBFyt3vVVCn/9tu2msEUSKFBmhyy9UTKry9N4P93H69MqH9FKmrDtrq
         pC5G/zGMBjEdDPpZb09uRAEOpeHWVJjsjNs99Hhtal251OnGlFK7oRVctqOUkYAsaAcM
         7bexwd4n6LpxqMD7DPwXrum/W/p2YKLN2YTiP3ulXU3l1aQawrDouGA0lI9fra4YlzeV
         voipGg3Wf9aOfRWG3xzuySgqejHJA8LXWJXfTy2DefXklVA7m//DAbr+lkNtaSiTwq0O
         je13hcSOXg2q+T4l0k3FiBXmaCmHqtnxmhnIzEOefMyA3vibT9Fpsx1TxBzvc7XK3EF8
         75nw==
X-Gm-Message-State: AC+VfDyWAHF1FoYo5zNehzk0G52j9OFw9ro9KLIk6Se/3yv3RvEVXo5x
        S40BBZ7GSze/Rq1SssKIr1YUD5R+nWc=
X-Google-Smtp-Source: ACHHUZ5oP2fqibEhr+hiyTyDhR1VAVVYfOtwEEMPNwK/qql8SBPxSt81G+ZcfxLwKlzC5HE5clTdoA==
X-Received: by 2002:a1c:e901:0:b0:3f6:2ee:6993 with SMTP id q1-20020a1ce901000000b003f602ee6993mr1335077wmc.4.1685101603040;
        Fri, 26 May 2023 04:46:43 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p23-20020a05600c205700b003f42314832fsm5003464wmg.18.2023.05.26.04.46.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 04:46:42 -0700 (PDT)
Message-ID: <ca053426-bd13-055a-88ab-9a4873f13f7e@gmail.com>
Date:   Fri, 26 May 2023 13:46:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: SPDX license review requests
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Matthew Wilcox <willy@infradead.org>,
        Alan Cox <alan@lxorguk.ukuu.org.uk>,
        Andi Kleen <ak@linux.intel.com>,
        Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
        Adam Dobes <adobes@redhat.com>, Chris Lameter <cl@linux.com>
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
In-Reply-To: <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Sk1iDJ0h07ERijyPVPZdykCs"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Sk1iDJ0h07ERijyPVPZdykCs
Content-Type: multipart/mixed; boundary="------------VcQAHaiSA0jwdH0AsH0QK55d";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org
Cc: Brian Inglis <Brian.Inglis@Shaw.ca>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Matthew Wilcox <willy@infradead.org>, Alan Cox <alan@lxorguk.ukuu.org.uk>,
 Andi Kleen <ak@linux.intel.com>,
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
 Adam Dobes <adobes@redhat.com>, Chris Lameter <cl@linux.com>
Message-ID: <ca053426-bd13-055a-88ab-9a4873f13f7e@gmail.com>
Subject: Re: SPDX license review requests
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
In-Reply-To: <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>

--------------VcQAHaiSA0jwdH0AsH0QK55d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 5/26/23 01:03, Alejandro Colomar wrote:
> [Minor self corrections.]
>=20
> On 5/26/23 00:56, Alejandro Colomar wrote:
>> Hi list!
>>
>> We've got 4 derivatives of the "VERBATIM" (now one of them in SPDX
>> as Linux-man-pages-copyleft") license.  I'll paste here the four.
>>

Here's some history of licenses in the Linux man-pages, from what I
can see in the prehistory branch:

Linux-man-pages-copyleft (previously, VERBATIM)
	This license was first used in the Linux man-pages in version
	3.25 (year 2010) in a single page:

		quotactl.2
			Jan Kara <jack@suse.cz>

			A few pieces copyright (c) 1996 Andries Brouwer (aeb@cwi.nl)
			and copyright 2010 (c) Michael Kerrisk <mtk.manpages@gmail.com>

VERBATIM_PROF
	This license was first used in the Linux man-pages in version
	1.42 (year 2001) in a single page:

		sigwaitinfo.2
			Michael Kerrisk (mtk16@ext.canterbury.ac.nz)

VERBATIM_ONE_PARA
	This license was first used in the Linux man-pages in version
	1.24 (year 1999) in several pages:

		sendfile.2
			Pawel Krawczyk
		cmsg.3
			Andi Kleen <ak@muc.de>
		rtnetlink.3
			Andi Kleen <ak@muc.de>
		arp.7
			Matthew Wilcox <willy@bofh.ai>
		ddp.7
			Alan Cox
		icmp.7
			Andi Kleen <ak@muc.de>
		ip.7
			Andi Kleen <ak@muc.de>
		netdevice.7
			Andi Kleen <ak@muc.de>
		packet.7
			Andi Kleen <ak@muc.de>
		raw.7
			Andi Kleen <ak@muc.de>
		rtnetlink.7
			Andi Kleen <ak@muc.de>
		socket.7
			Andi Kleen <ak@muc.de>
			Matthew Wilcox
		tcp.7
			Andi Kleen <ak@muc.de>
		udp.7
			Andi Kleen <ak@muc.de>
		unix.7
			Andi Kleen <ak@muc.de>
		x25.7
			Heiner Eisen

VERBATIM_TWO_PARA
	This license was first used in the Linux man-pages in version
	3.07 (year 2008) in a single page:

		move_pages.2
			Added by Michael Kerrisk <mtk.manpages@gmail.com>,
			but Copyright (C) 2006 Silicon Graphics, Inc.
			                  Christoph Lameter

	It was later reused in another page:

		migrate_pages.2
			Copyright 2009 Intel Corporation
=2E\"                Author: Andi Kleen
=2E\" Based on the move_pages manpage which was
=2E\" This manpage is Copyright (C) 2006 Silicon Graphics, Inc.
=2E\"                               Christoph Lameter

	This license is the one considered non-free by Fedora, and which
	we need to drop.  Luckily it's only two pages, so they could be
	reasonably rewritten in a worst case.




--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------VcQAHaiSA0jwdH0AsH0QK55d--

--------------Sk1iDJ0h07ERijyPVPZdykCs
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRwnBoACgkQnowa+77/
2zLYZw//ZJ9s4YbG8vzF0Nnxd81kZShVd1iEa8JVsQi5pF280Hk9suoTXjXeCZpa
SbIJPmGukNxdwX4iRl5Q8p3EcQJJDkcO5AwiPt057dCt1pJ+KVlKO8mwv869XiKU
eo/n4fSlfZGk9ZzS1Yqdc7aku1oNcXYLDHlbxrZ6D1TYkk+A5q5tUImB+tXLN+6g
rTKAqSsVmHeKM5WkmJHro5vEl10wPdkFjAdCIROtQq1XPnvnIeVY2u+pL8jAlmzX
DF5bukKpgrtzMPgjg/DGtSphe0KNo4YDlKt02h2aRpPzXlEQ34SqrSWfhknOpw8A
OMljdd5Vu/YebUZRcV/W7c+O3RFlX3og3485rRIPaU72mKVfTX5Atvtyrjvs9qc0
XsNff9EqCeo9FjLZIaPtOzd/CBWHBLFamAw1mCgkMd22STh15tpZl9pv7lJ4H1BK
ibrU7rTkcv/ypQhVmpGN2SMZCbSTDPby9Zy/2FW2rq9kf8A9gr7gpoGIBpvbnGrr
KlIGNJTYQ7Iz85IIa/kYgBH57dWMbNKWZl2DothFtD/gPU4qnWBMvLhPCxXf+0U+
UhWdBxFRbUNHCzrPEzIGjCEbW2AJSUAgcSX2U9eqXFkHesvqANtxUOSTBGFNeWOX
2sVrRzlBYuEnY1Rzo/DAUQLYpj5cMB8RSxw4izYnKu+PCZyUojs=
=/C+H
-----END PGP SIGNATURE-----

--------------Sk1iDJ0h07ERijyPVPZdykCs--
