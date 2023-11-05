Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FFB27E11E5
	for <lists+linux-man@lfdr.de>; Sun,  5 Nov 2023 02:37:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229495AbjKEBhD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 Nov 2023 21:37:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbjKEBhC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 Nov 2023 21:37:02 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDE35136
        for <linux-man@vger.kernel.org>; Sat,  4 Nov 2023 18:36:58 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93512C433C7;
        Sun,  5 Nov 2023 01:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699148218;
        bh=/GMkCjofG7fpT/A74WC1pYA8VccJ1FrV+h00Bx134yE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=JIoU83ZCuPDpPhDcr3NOwAjwZjMzGcl/xPq0U7BwCF0rWgw5506+f8uPWifuujeSb
         EJuY7mIGuuOJhd8PMIhVThxnqNjWv/+MCcssuvLi77RHAPc+pccczWulFQ6eYvbTTm
         Wfi7+oA+Jvz5Qltn29Q11DozlnfuFRdzJxfQheyjHoZDpbkSYTq4z6zTH9ROJ+CrnG
         paHFqZQkmKyN77W985N9Q3enJwImVv1gDUyx5AyppEv0IGHZSF+Lwf6L66weI6ETD2
         y86fBbnX+pY0Vn0K8bvZ1Qx8lAUYwthmu88tF2hGJIUMmqxz1o4SW7lXvXDHkM93V4
         nu1v7gRyysANQ==
Date:   Sun, 5 Nov 2023 02:36:49 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUbxt8BSjufeKY6Y@debian>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
 <c8cf6f94-97e8-41d9-ade8-9cae06313ced@jguk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="sPoYv0eumvd3fCyB"
Content-Disposition: inline
In-Reply-To: <c8cf6f94-97e8-41d9-ade8-9cae06313ced@jguk.org>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--sPoYv0eumvd3fCyB
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 5 Nov 2023 02:36:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Jonny,

On Sat, Nov 04, 2023 at 09:18:08PM +0000, Jonny Grant wrote:
> On 04/11/2023 19:33, Alejandro Colomar wrote:
> > Hi Jonny,
> >=20
> > On Sat, Nov 04, 2023 at 11:27:44AM +0000, Jonny Grant wrote:
> >> Hello
> >> I have a suggestion for strncpy.
> >>
> >> C23 draft states this caveat for strncpy.=20
> >>
> >> "373) Thus, if there is no null character in the first n characters of=
 the array pointed to by s2, the result will not be null-
> >> terminated."
> >>
> >>
> >> https://man7.org/linux/man-pages/man3/strncpy.3.html
> >>
> >> "If the destination buffer, limited by its size, isn't large
> >> enough to hold the copy, the resulting character sequence is
> >> truncated. "
> >=20
> > The use of the term "character sequence" instead of "string" isn't
> > casual.  A "string" is a sequence of zero or more non-zero characters,
> > followed by exactly one NUL.  A "character sequence" is a sequence of
> > zero or more non-zero characters, period.
>=20
> Ok that's good to know. C23 calls it those "array", POSIX too. POSIX expl=
ains if the array is a string (ie null terminated) it pads with nulls, I'll=
 paste it below:
>=20
> https://pubs.opengroup.org/onlinepubs/009696899/functions/strncpy.html
>=20
> "If the array pointed to by s2 is a string that is shorter than n bytes, =
null bytes shall be appended to the copy in the array pointed to by s1, unt=
il n bytes in all are written."

By array, C23 and POSIX (AFAICS) refer to the array of char (so, a
`char []`) that holds the data, and not to the data itself.

By character sequence, I refer to the data, with consists of characters
in the range [1, 255] (zero or more of them).  Note that a character
sequence doesn't contain null characters.  The padding that strncpy(3)
writes after the character sequence is not part of the character
sequence, even though it is contained in the character array.

> > To be clearer in that regard, the CAVEATS section of the same page says
> > this:
> >=20
> > CAVEATS
> >      The name of these functions is confusing.  These  functions  pro=
=E2=80=90
> >      duce   a  null=E2=80=90padded  character  sequence,  not  a  strin=
g  (see
> >      string_copying(7)).
> >=20
> > Saying that these functions don't produce a string should warn anyone
> > thinking it would.  The page string_copying(7) goes into more detail.
> >=20
> >>
> >> How about clarifying this as:
> >>
> >>
> >> "If the destination buffer, limited by its size, isn't large
> >> enough to hold the copy, the resulting character sequence is
> >> truncated; where there is no null terminating byte in the first n
> >> characters the result will not be null terminated. "
> >=20
> > strncpy(3) should !*NEVER*! be used to produce a string.
> > I don't think that should be conditional.  Your suggested change could
> > induce to the mistake of thinking that strncpy(3) is useful if the size
> > of the buffer is enough.  Do not ever use that function for producing
> > strings.  Use something else, like strlcpy(3), strcpy(3), or stpecpy(3).
>=20
> Just documentation feedback based on C23, not writing code today.
>=20
> Perhaps you may have seen  Michael Kerrisk article about the risks with s=
trlcpy.
> https://lwn.net/Articles/507319/

Yes.  I believe Michael's article and I agree on most terms.  That
article, though, is a bit outdated, and recent versions of
_FORTIFY_SOURCE (see ftm(7)) have changed things significantly.

>=20
> re strcpy doesn't that risk buffer overruns? That's a surely a cyber secu=
rity risk?

Not so much if you use _FORTIFY_SOURCE.  The feature probably still has
a few corner cases that it cannot detect, but I'm going to guess that
they are few.

> strlcpy is also bad in certain ways, it breaks ISO TR24731 "Do not unexpe=
ctedly truncate strings", can cause overruns and crashes.

And does strncpy(3) do any better?  It also truncates, so it necessarily
shares the same problems that strlcpy(3) has.  And then it has its own
ones.

-  strlcpy(3) truncates the resulting string, which most of the time is
   bad, and a bug if it the return value is ignored.  However, the
   the return value tells if there was truncation.

-  strncpy(3) truncates the resulting character sequence (it's not null-
   terminated, so it's not a string), _and_ it can't report truncation
   via the return value.  See: by yourself:

	char a[4];  strncpy(a, "asdf");

   There was no truncation, since the entire data is available in the
   resulting character sequence.  However, there's still the bug if you
   try to read that as a string.

>=20
> I guess if you feel strncpy should "never be used to produce a string" yo=
u could describe that somewhere with an explanation in an article. You didn=
't mention why you feel it is not useful even if the size of the buffer is =
enough - including a null terminator I hope!

Yes.  The article, or explanation, you can find it in string_copying(7),
a manual page that I wrote recently to address precisely this.

Regarding why:

-  In case you don't want truncation, and prefer to abort, it is usually
   preferable to call strcpy(3) and rely on _FORTIFY_SOURCE.  Only if
   you have doubts about the ability of _FORTIFY_SOURCE to know the
   buffer size, you should use a different function (continue reading
   for that).  Such a case would be if you do very obscure operations to
   get a buffer and the compiler will be blind to it.

-  In case you want truncation, which is seldom, you need to use
   strlcpy(3), which is the only standard function that creates a
   truncated string.

-  In case you don't want truncation, and don't have _FORTIFY_SOURCE
   available (or you know it won't be able to handle a specific case),
   or you don't want to crash your program and want to simplify report
   an error, you also need to use strlcpy(3), which detects truncation
   easily, so you can check for that and report an error.

But there's no case where you want a string and the most suitable call
would be strncpy(3); it is never the best function.  Except when you
don't want a string, of course.  If you're working with utmp(5), then go
ahead and use that function.  But for new interfaces, you should not
design them so that they use this function.  utmp(5) and strncpy(3)
should be a mistake of the past, not to be repeated.

>=20
> strncpy_s is a better solution, not widely available, and not part of gli=
bc. That's another debate.

No, it's not.  strncpy_s(3)'s interface is rather bad.  It is a function
to catch programmer errors, by adding another parameter that the
programmer has to write.  What if the programmer makes an error while
writing the new argument of these _s functions?  Kaboom.

_FORTIFY_SOURCE accomplishes the same task, but the size is calculated
internally by the implementation, which means the programmer can't write
a bug in the code that is trying to prevent bugs.

Here's an article on these Annex K interfaces:
<https://open-std.org/jtc1/sc22/wg14/www/docs/n1967.htm>

>=20
> Is stpecpy standardised? If you can send me an online manual for it, I'll=
 take a look.

No it's not.  It's similar to strlcpy(3), but designed to chain better.
So, if you just need to call strlcpy(3), it's probably simpler to do it.
But if you need to call strlcat(3), then you may consider stpecpy(3) a
better alternative.  The main difference is that with strlcpy(3) +
strlcat(3), you need to check for truncation after every call, while
with stpecpy(3) you only need to check once after the last call.  Also,
it's simpler (less tricky) to implement (although now that strlcpy(3) is
standard, it's less of a problem).

You can find stpecpy(3) documented, with an implementation, in the
string_copying(7) manual page.

Cheers,
Alex

>=20
> Regards, Jonny

--=20
<https://www.alejandro-colomar.es/>

--sPoYv0eumvd3fCyB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVG8bEACgkQnowa+77/
2zJBrg//fBS0CzR18W34c2J4CDvGF4sSo3nZ0txl5OQTsTRlvybFSds5y3i37Rfy
I1yRivvrXvKTjYOW82cFHWg4xt70yrAgA37VLYBonHJrPDPv3BAa5BsqZ4t6AzIQ
E3d8OYBdKum8dKwXEOZ/ZinzM3FhFvVyoD95JE49VFLPCCFMQ2rYLaEPUV0XOTo7
ebP8na+bBRAEZBVpXSj/9rpryP+F+uVCbFHeDq2lLfD3K0ifeVp+Ep3fLOG7bCXx
1VKkOOo84OFXvjW8Y2d1zV9O/N7szslXnDYF+AJEeXUNNdM0HIpBYunLyzZqv/w8
1mYHcKCfEHojp9y08OyFJlpnuW8ifdlKf/1M2HV7dpYCqU1NcqtNIGUzqB0M5dXC
34ZdC6izOiJEjLScz4qth6gAsKftho5mrvqSkiy17Ut0k4EQuZaHDrOHqlw7isW0
VNRfBPdUoBZLHtmLwNifi2UB9FiK7K3DkL+mDRflhQY8ykHhI5TPq4NvYkKbGXrr
MKFs1YjiZvSqDf6BNw4NiDxD3xMs78tKPlXVPehpYRkpHcKU1SK+LnfEYNIwxYmU
mIpjIPQJEtbEXB31NVNHp4vLht9HvRGoGYR9qBDdhFj28w55QdYB8b7g+Y6D1pA4
MerYf5otFAXUrZmBO3IMv6FVnZcEFFTvVJW8h1xclZZb4SKWQcY=
=owEp
-----END PGP SIGNATURE-----

--sPoYv0eumvd3fCyB--
