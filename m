Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 402617CA5F9
	for <lists+linux-man@lfdr.de>; Mon, 16 Oct 2023 12:47:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229668AbjJPKrJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Oct 2023 06:47:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230219AbjJPKrJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Oct 2023 06:47:09 -0400
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC777AC
        for <linux-man@vger.kernel.org>; Mon, 16 Oct 2023 03:47:05 -0700 (PDT)
Received: by smtp.gentoo.org (Postfix, from userid 559)
        id 6B6B6335D21; Mon, 16 Oct 2023 10:47:05 +0000 (UTC)
Date:   Mon, 16 Oct 2023 16:32:02 +0545
From:   Mike Frysinger <vapier@gentoo.org>
To:     Siddhesh Poyarekar <siddhesh@gotplt.org>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com
Subject: Re: [PATCH] ldd: Do not recommend binutils as the safer option
Message-ID: <ZS0UpvcYc/0RgdkG@vapier>
References: <20231016061923.105814-1-siddhesh@gotplt.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="iSV4o++OVtbY9qUx"
Content-Disposition: inline
In-Reply-To: <20231016061923.105814-1-siddhesh@gotplt.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--iSV4o++OVtbY9qUx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 16 Oct 2023 02:19, Siddhesh Poyarekar wrote:
> The binutils security policy[1] states that diagnostic tools should not
> be expected to be safe without sandboxing, so it doesn't make sense to
> recommend it as the alternative to ldd, especially since it is not a
> drop-in replacement.  Recommend sandboxing instead, since that is in
> fact the safest known way at the moment to deal with untrusted binaries.

fwiw, this is one reason why i wrote `lddtree` (although the primary reason
was cross-compiling and separate-root dirs).  it's part of the pax-utils
project that's available in most distros now.
-mike

--iSV4o++OVtbY9qUx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEuQK1JxMl+JKsJRrUQWM7n+g39YEFAmUtFJ8ACgkQQWM7n+g3
9YGSmQ//Y4Bxof5y1fcQ7fP1zdxqLux98YkuuYIxz+1sENfxxSC0abRYZLwxfyJW
RwT1ZMJmpozOOPCXoNJKl/wnxA64cmA7R7goBAGfYfqjdP/0UvB24bJDJnaB0Mw4
9iBZvF4XCTaF7HPs5rissifan9wWJrder3CLNo6f3/Mu5EaqO6rnak+bvLs/ws9t
8gxjl2LAvSUrcyGsIl5ptokLBZPE+veIRkLKbKnx3xJufNDosvTXzlGKYYdZ1a4B
GN4ElrE3q5eHAqaPqUCubBWQew6kUi4J9K9foAB9/ZFzkIJIMgFIp1Rgnb+NpQKe
Lpkrbk3/ZYWICig3vKe/McfD1lOLXIIvGZzsdZocU85VR9JsLTGAhYhGq0uaokc1
T9OE/JkM+1Vky2bVEyGIU32W92T1ColvBgj/vI4czThuywwQMPM/yDvsVu23O1qD
NghV74enu2hV/Q1VFvq0Hf526Bsi9CX+eIlBrYBZZOo0nXDhGjw7DYvZEE9WTNMF
EvPYPevPQGcnoJiaWofJCaM0d4fbzuUXYw0Zd7KTkftIMhF7+RMKbgzLhU83Ex7F
vEHMC0A7r8NgY4+pwmsIDlXtaiBSPasmQLBbQfoYdaE1MkGk8n9Z6CSSZyQXeil/
OTWZ8VG4vwPM24XpAHAsjoaxMoAT3E+a0jWGF+PA7A/dClyqb9w=
=3aMU
-----END PGP SIGNATURE-----

--iSV4o++OVtbY9qUx--
