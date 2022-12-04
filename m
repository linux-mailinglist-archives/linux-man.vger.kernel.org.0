Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 014C2642083
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 00:19:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230385AbiLDXT1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 18:19:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229954AbiLDXT0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 18:19:26 -0500
X-Greylist: delayed 596 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 04 Dec 2022 15:19:25 PST
Received: from supercat.cmpct.info (supercat.cmpct.info [71.19.146.230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AC6D11C3A
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 15:19:25 -0800 (PST)
Received: from smtpclient.apple (unknown [82.8.138.118])
        by supercat.cmpct.info (Postfix) with ESMTPSA id 423C13FC52;
        Sun,  4 Dec 2022 23:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cmpct.info;
        s=default; t=1670195367;
        bh=Fg8D8kw8uq0gLfQ6DoH8FzTXRfCTwxpdlzDsVDVnrGs=;
        h=Subject:From:In-Reply-To:Date:Cc:References:To;
        b=KQe5pcdHj8QL8biJ31dF9u93qOzlz5h/HZgZBK/vhK9j8fx9LNpSzs9+XXgwitJX1
         5YqT3shXSf2PJ8VGw61YEJV78Hpjup7y4Lc266QZnj/X8zhCDWfA4al8BzW9ElvaBQ
         ZfQ8foTSJrWX0F7aNCrxmr8Fvuti9B80HnoNMTo0=
Content-Type: multipart/signed;
        boundary="Apple-Mail=_6A8E0A9F-92EA-4E97-A80B-0E28EC607B77";
        protocol="application/pgp-signature";
        micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.200.110.1.12\))
Subject: Re: Issue in man page wcsncpy.3
From:   Sam James <sam@cmpct.info>
In-Reply-To: <EC7619DA-5D2E-4738-97D2-9A98D4108A02@gentoo.org>
Date:   Sun, 4 Dec 2022 23:09:07 +0000
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Helge Kreutzmann <debian@helgefjell.de>,
        GNU C Library <libc-alpha@sourceware.org>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-Id: <B67BFC03-D966-497B-94FC-499531EBE141@cmpct.info>
References: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
 <dbe4f048-4522-fcd2-3edf-ff192804c076@gmail.com>
 <EC7619DA-5D2E-4738-97D2-9A98D4108A02@gentoo.org>
To:     Sam James <sam@gentoo.org>
X-Mailer: Apple Mail (2.3731.200.110.1.12)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Apple-Mail=_6A8E0A9F-92EA-4E97-A80B-0E28EC607B77
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 4 Dec 2022, at 23:06, Sam James via Libc-alpha =
<libc-alpha@sourceware.org> wrote:
>=20
>=20
>=20
>> On 4 Dec 2022, at 20:42, Alejandro Colomar via Libc-alpha =
<libc-alpha@sourceware.org> wrote:
>>=20
>> Hi Helge, glibc developers,
>>=20
>> On 12/4/22 10:07, Helge Kreutzmann wrote:
>>> Without further ado, the following was found:
>>> Issue:    Is the "L" in the bracket (for the NULL character) =
correct?
>>> "The B<wcsncpy>()  function is the wide-character equivalent of the"
>>> "B<strncpy>(3)  function.  It copies at most I<n> wide characters =
from the"
>>> "wide-character string pointed to by I<src>, including the =
terminating null"
>>> "wide character (L\\(aq\\e0\\(aq), to the array pointed to by =
I<dest>."
>>> "Exactly I<n> wide characters are written at I<dest>.  If the =
length"
>>> "I<wcslen(src)> is smaller than I<n>, the remaining wide characters =
in the"
>>> "array pointed to by I<dest> are filled with null wide characters.  =
If the"
>>> "length I<wcslen(src)> is greater than or equal to I<n>, the string =
pointed"
>>> "to by I<dest> will not be terminated by a null wide character."
>>=20
>> As an unrelated note.  I've had this running in my mind for some =
time... your various bug reports for strncpy(3) and similar wide =
character functions have triggered those thougts.
>>=20
>> I'm going to mark strncpy(3) and similar functions as deprecated, =
even if no libc or standard has done so.  There's wide agreement (at =
least in some communities) that strncpy(3) _is evil_.  There's simply no =
use for it.
>>=20
>=20
> Please don't do this unilaterally. Apple did this unilaterally for =
sprintf which has caused problems, as well.

snprintf, that is

--Apple-Mail=_6A8E0A9F-92EA-4E97-A80B-0E28EC607B77
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iNUEARYKAH0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCY40olF8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MAAKCRBzhAn1IN+R
kPmxAQD+87QjBcpeI1Tcj6NUA6I1h6ZK6sQebxpolFlFRbqaigEA2aGKoHmoVaXR
vc24L72BaJVyZJDZNYQQqfVZHBT+mgY=
=AjxP
-----END PGP SIGNATURE-----

--Apple-Mail=_6A8E0A9F-92EA-4E97-A80B-0E28EC607B77--
