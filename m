Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AE4576785E
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 00:05:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230213AbjG1WFK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 18:05:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbjG1WFJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 18:05:09 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 782082D5F
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 15:05:08 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1563F62209
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 22:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1391C433C8;
        Fri, 28 Jul 2023 22:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690581907;
        bh=aItu2HJt9tOGGTS37NYzJ6dPqFUj4w8tpcFqXk+1pr8=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=nQvYO4VgnJiTxzmObtkQV+xu0wmboWerNA+mVVKQVMW2Ybv4q8gzIqDv+NVOyfwHk
         lkR+zq9GNcXeSjsY2TtpOiIHIEiCKHlJFufIcN+GfulerKx7HWvwPTIi6Z7wYoe3zk
         Sq4/hx/OIVYdBS5jGxUxIWULYTd/JKd+y0RrVPAU7sTMo0L4Hu9RT6hISWherG6avv
         9xHtX6v74QHWCCvICqbfU7DrwL2rrgvirWG6lpXRSbWL4qcp0bCY1G9l2lNWbsz6vn
         4GkgW8Ldwmymtsg5uq/krwV+1f2vSrN+OS5Uz/DGQl0/ybHYViNi5SzITjNRequb4V
         h56gbt1aIO/DQ==
Message-ID: <8fe571c9-eda2-bd1e-0d78-9c5e8f7222fe@kernel.org>
Date:   Sat, 29 Jul 2023 00:05:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] string_copying.7: don't grant strl{cpy,cat} magic
Content-Language: en-US
To:     Lennart Jablonka <humm@ljabl.com>
References: <ZMQVYtquNN-s0IJr@beryllium>
Cc:     linux-man@vger.kernel.org
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <ZMQVYtquNN-s0IJr@beryllium>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0tnRpZ95CWL3HAHidXLbwYcO"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0tnRpZ95CWL3HAHidXLbwYcO
Content-Type: multipart/mixed; boundary="------------AQ8seXLXYXLUAspc9slAHO4O";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Lennart Jablonka <humm@ljabl.com>
Cc: linux-man@vger.kernel.org
Message-ID: <8fe571c9-eda2-bd1e-0d78-9c5e8f7222fe@kernel.org>
Subject: Re: [PATCH] string_copying.7: don't grant strl{cpy,cat} magic
References: <ZMQVYtquNN-s0IJr@beryllium>
In-Reply-To: <ZMQVYtquNN-s0IJr@beryllium>

--------------AQ8seXLXYXLUAspc9slAHO4O
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey Lennart!

On 2023-07-28 21:22, Lennart Jablonka wrote:
> A function can't check whether a pointer points to the start of a
> string.  What it certainly can do is to keep reading until you either
> find a null byte or read the secret key that lies adjacent in memory an=
d
> post it to your favorite mailing list.
>=20
> strlcpy and strlcat behave the exact same way any other function
> accepting a string behaves:  If you don't pass a string, the behavior i=
s
> undefined.  And that, I believe, does not deserve a special mention
> here, seeing as all the other string functions don't get such a mention=

> either.

Hmm, you're right.

What I intended to mean is that while most other functions --e.g.,
strcpy(3)-- overwrite after the buffer, the design of strlcpy(3) is a
bit more clever and makes it so that when the caller invokes UB, it
tries to exploit that UB in a way that the input string is entirely
read before starting to write, which makes it more likely to crash in
a read, rather than writing to random memory (which might still happen
if the read is not enough to crash, though).

But it's true that it's not magic, and the UB is still there, so I
agree in removing that.  It's dangerous to make reader believe
that it can avoid UB, so it's preferable to not mention that at all.

>=20
> Signed-off-by: Lennart Jablonka <humm@ljabl.com>
> ---
> Hey Alex!
>=20
> I don't dislike string_copying(7) overall.  This is one of the parts of=

> the content that I dislike---it is false, after all.  Besides that:
>=20
> The "definitions" at the top don't make it clear enough that they aren'=
t
> supposed to be precise definitions used in your usual C jargon; that
> while string and a string's length and an object's size are defined
> by C, and while you understand and sometimes use most of these terms,
> there is no norm that says "When you talk about a pointer to one past
> a buffer's last byte, you call it 'end'!"  That there is no norm that
> says "When you say 'copy,' you write to the beginning, not to
> elsewhere!"

True.  My intention was to settle the jargon and pseudo-standardize
these terms (of course in decades, not tomorrow).  Every other project
uses a different term, and I'd like to unify.

>=20
> Furthermore, the terminology around "character sequences" confused me
> while reading the page.  When do you have a buffer, neither
> null-terminated nor null-padded, that is defined not to contain null
> bytes?

NGINX uses these internally:

$ grepc ngx_str_t
=2E/src/core/ngx_string.h:16:
typedef struct {
    size_t      len;
    u_char     *data;
} ngx_str_t;


Basically it's a non-zero buffer plus its length.  They have interesting
properties; for example, you can take a substring (or should I call it
sub-sequence) just by taking a pointer to somewhere in the middle, and
the length of the substring, without really copying the string.

>  And how do functions behave that want a character sequence if
> that does contain a null byte?  Do they take the null byte to signal th=
e
> character sequence's end?  Need they accept the null byte as part of th=
e
> character sequence?  Is the behavior undefined?

NGINX handles these strings by the length stored in the buffer.  Any
null byte in the middle of a string would be treated as any other
character, although they would be problematic when interfacing libc; in
general, care is taken to not have null bytes in those strings.  NGINX
uses mempcpy(3) (or rather, ngx_cpymem(), which is the same thing) to
copy these things, or other more sophisticated functions and macros
based on mempcpy(3).

$ grepc ngx_cpymem
=2E/src/core/ngx_string.h:97:
#define ngx_cpymem(dst, src, n)   (((u_char *) ngx_memcpy(dst, src, n)) +=
 (n))


=2E/src/core/ngx_string.h:107:
#define ngx_cpymem(dst, src, n)   (((u_char *) memcpy(dst, src, n)) + (n)=
)

>=20
> And lastly, the man page doesn't list the functions' standards or who
> invented them.

That was deliberate.  The specific pages of each of those functions
already documents that.  Since the intention was to differentiate the
use cases of each of the functions, I believe mentioning the standards
would just deviate from that main point, and so I omitted that info.
The point is that choosing one of these functions shouldn't depend on
what standards are available to the programmer.  Instead, the
programmer should use the appropriate function, and then if it's not
available, it should be written within the project (probably as a
wrapper around other functions) to be able to use it.  That's why I
provided some naive implementations of some of them.

Thanks for your opinion and review of the page!

>=20
>  man7/string_copying.7 | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>=20
> diff --git a/man7/string_copying.7 b/man7/string_copying.7
> index 04426ef77..308cada36 100644
> --- a/man7/string_copying.7
> +++ b/man7/string_copying.7
> @@ -223,8 +223,7 @@ It only requires to check for truncation once after=
 all chained calls.
>  .BR strlcpy (3bsd)
>  and
>  .BR strlcat (3bsd)
> -are designed to crash if the input string is invalid
> -(doesn't contain a terminating null byte).
> +are similar, but less efficient when chained.

Ok.

>  .IP \[bu]
>  .BR stpncpy (3)
>  and
> @@ -410,9 +409,6 @@ isn't large enough to hold the copy,
>  the resulting string is truncated
>  (but it is guaranteed to be null-terminated).
>  They return the length of the total string they tried to create.
> -These functions force a SIGSEGV if the
> -.I src
> -pointer is not a string.

Ok.

Patch applied.  Thanks!

Cheers,
Alex

>  .IP
>  .BR stpecpy (3)
>  is a simpler alternative to these functions.

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------AQ8seXLXYXLUAspc9slAHO4O--

--------------0tnRpZ95CWL3HAHidXLbwYcO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTEO5AACgkQnowa+77/
2zLyqw//bAAAV3nHuTCAbwrfppc2Fkb8hzFGiXdAOQWNCknQ2aw9riZV2ecYC6sL
luu7G3NPOCJuwZuoQBhp7YFzC/fsE1wRDzBmlF0o/aTHs43VGvZMZChqsWz+bmFA
iL5kp7KfgYLEcBPrq97BJzbzVwxXXBTBGIbsJreTF+5oHpcMshNbrnmY0CLDj4NN
9zmL6UkaSLPkT5W9mULbMpFqnO6iSIKHoWFfWlMTJ6c17sVhQCrJ3M6yA9h/x92k
pYXvRmXc5QY9SM1RCbi0UVBePaPfDU3ynu2UVKI1StTUMwOfG5L13ztCQMM2JHB6
NCmF3R3UO4VMncGEnU6Z8iaizlG5ocVBbW8umF6j1fI9gSAOSSJzOrISlytXGk5T
glH6smHjEJAQyRi+L6h04wWe7CH/mo2IDVkFCbWUMLExAXNT7++w7vVSpCeM/eXs
muEu6vN693a9YU28RITV2DwYj7UoHHJ5SSi6aRoA3hzhwSW1Vcxtilo8W+nltsxT
b0/+tVNEGD8ZGntqmPJ0kh5hAPanFZiwWxSbrvprW1FOePmPgGJbZACIGVxgA7An
s+57WqfSJXTbWhVFPrwLaioDx46+tVzHLd7x/Lvf/YzEGzZiBJbyaire38xBIRxb
Ct7nLcy+hXCBvYDA/Jqnzd04jq4S/QCWnp4LzQADcPdVR1IX/qA=
=5rNT
-----END PGP SIGNATURE-----

--------------0tnRpZ95CWL3HAHidXLbwYcO--
