Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D131F767EFA
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 14:05:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229889AbjG2MFM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 08:05:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229626AbjG2MFL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 08:05:11 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84596212B
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 05:05:09 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0A97060BDE
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 12:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA160C433C8;
        Sat, 29 Jul 2023 12:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690632308;
        bh=moV5G52+kWC97e0szHHXksJVmPh4YrPDgonIVXfJAl8=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=l2Gl+OCTygAdZ1TcYAbvNjcYQTH7Vw+Kkg4micAAPMPfV6LiYVAjdtUM7ydi02x9K
         HY4eRrsxGbKEb/n3ghHh+QdraC5D0f9iUDpYzJTptWPI1yQfS24WoP8NLDFZNEzXVB
         tymaB83WdsF6tzZwHnrGJ5Zei/G+DHP4DmgHX/ccvP72yNagb0xmMx4q5a9Y4xqUhd
         +45aBhFuxF3x64EmZx2Wmi2L6Yz/ux8dDDDSA0kbmmuxSyiMo28wYwu4PddKSqV0+V
         Vy7hDzXXdZXHyRkPT9SSutQEcvxuqVTs95wNATslENwNpZtVZlClKTCjVWCcnltf/E
         q9BiQJqP/IAMA==
Message-ID: <48509f53-05c5-4a6f-7ad8-e5d1639dc674@kernel.org>
Date:   Sat, 29 Jul 2023 14:04:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] string_copying.7: don't grant strl{cpy,cat} magic
Content-Language: en-US
To:     Lennart Jablonka <humm@ljabl.com>
References: <ZMQVYtquNN-s0IJr@beryllium>
 <8fe571c9-eda2-bd1e-0d78-9c5e8f7222fe@kernel.org>
 <ZMRUmgRfRVxL3wEo@fluorine.ljabl.com>
Cc:     linux-man@vger.kernel.org
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <ZMRUmgRfRVxL3wEo@fluorine.ljabl.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------hXf3MI355TXicoL4sII0QaST"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------hXf3MI355TXicoL4sII0QaST
Content-Type: multipart/mixed; boundary="------------ERHAj10x0VWXG0bMsbNMxqbN";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Lennart Jablonka <humm@ljabl.com>
Cc: linux-man@vger.kernel.org
Message-ID: <48509f53-05c5-4a6f-7ad8-e5d1639dc674@kernel.org>
Subject: Re: [PATCH] string_copying.7: don't grant strl{cpy,cat} magic
References: <ZMQVYtquNN-s0IJr@beryllium>
 <8fe571c9-eda2-bd1e-0d78-9c5e8f7222fe@kernel.org>
 <ZMRUmgRfRVxL3wEo@fluorine.ljabl.com>
In-Reply-To: <ZMRUmgRfRVxL3wEo@fluorine.ljabl.com>

--------------ERHAj10x0VWXG0bMsbNMxqbN
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Lennart,

On 2023-07-29 01:51, Lennart Jablonka wrote:
>>> A function can't check whether a pointer points to the start of a
>>> string.  What it certainly can do is to keep reading until you either=

>>> find a null byte or read the secret key that lies adjacent in memory =
and
>>> post it to your favorite mailing list.
>>>
>>> strlcpy and strlcat behave the exact same way any other function
>>> accepting a string behaves:  If you don't pass a string, the behavior=
 is
>>> undefined.  And that, I believe, does not deserve a special mention
>>> here, seeing as all the other string functions don't get such a menti=
on
>>> either.
>>
>> Hmm, you're right.
>>
>> What I intended to mean is that while most other functions --e.g.,
>> strcpy(3)-- overwrite after the buffer, the design of strlcpy(3) is a
>> bit more clever and makes it so that when the caller invokes UB, it
>> tries to exploit that UB in a way that the input string is entirely
>> read before starting to write, which makes it more likely to crash in
>> a read, rather than writing to random memory (which might still happen=

>> if the read is not enough to crash, though).
>=20
> I=E2=80=99m interested in where you got that from.  This is strlcpy:

D'oh!  I was talking from memory.  I shouldn't do that!
Please forget and forgive what I said above.  :)

>=20
> 	size_t
> 	strlcpy(char *dst, const char *src, size_t dsize)
> 	{
> 		const char *osrc =3D src;
> 		size_t nleft =3D dsize;
>=20
> 		/* Copy as many bytes as will fit. */
> 		if (nleft !=3D 0) {
> 			/*
> 			 * <humm> This is where reading and
> 			 * writing take place.  src doesn=E2=80=99t get
> 			 * read entirely before writing begins.
> 			 */
> 			while (--nleft !=3D 0) {
> 				if ((*dst++ =3D *src++) =3D=3D '\0')
> 					break;
> 			}
> 		}
>=20
> 		/* Not enough room in dst, add NUL and traverse rest of src. */
> 		if (nleft =3D=3D 0) {
> 			if (dsize !=3D 0)
> 				*dst =3D '\0';		/* NUL-terminate dst */
> 			while (*src++)
> 				;
> 		}
>=20
> 		return(src - osrc - 1);	/* count does not include NUL */
> 	}
>=20
> I don=E2=80=99t see what you mean in there.

I lied.  I should have said that it writes what is safe to write, and
then uses a somewhat "safer" version of undefined behavior (compared
to other string copying functions).  The standard differentiates
"bounded UB", which doesn't perform out-of-bounds stores, from
"critical UB", which performs them.  In usual jargon, UB is UB, and
there's no mild form of UB; however, the standard prescribes a bounded
form of UB.  However, I'm not sure compilers --and specifically GCC--
follow such a prescription of bounded UB, so it's better to consider
all UB to be critical UB, just to fall on the safe side.

In the case of strlcpy(3), it forces a bounded UB, to increase the
likeliness of a crash (due to reading out-of-bounds), to prevent
critical UB being possibly invoked in the following lines of code.

In the end, that's better hidden as a benevolent implementation detail,
and users should just use the functions with defined behavior, and
taking care of calling the appropriate function for each use case.

References:

<https://port70.net/~nsz/c/c11/n1570.html#L.2>


>=20
>>> The "definitions" at the top don't make it clear enough that they are=
n't
>>> supposed to be precise definitions used in your usual C jargon; that
>>> while string and a string's length and an object's size are defined
>>> by C, and while you understand and sometimes use most of these terms,=

>>> there is no norm that says "When you talk about a pointer to one past=

>>> a buffer's last byte, you call it 'end'!"  That there is no norm that=

>>> says "When you say 'copy,' you write to the beginning, not to
>>> elsewhere!"
>>
>> True.  My intention was to settle the jargon and pseudo-standardize
>> these terms (of course in decades, not tomorrow).  Every other project=

>> uses a different term, and I'd like to unify.
>=20
> I=E2=80=99m not quite sure yet what to think of that, but I do think yo=
u=20
> should mention that in the man page.  =E2=80=9CHere are some terms;=20
> C defines =E2=80=98string,=E2=80=99 but you are invited to re-use all t=
hese=20
> terms=E2=80=94it=E2=80=99d be great if we were in unity, after all.=E2=80=
=9D

I'm open to discussion regarding how to express that.  I'm just not sure.=


>=20
>>> Furthermore, the terminology around "character sequences" confused me=

>>> while reading the page.  When do you have a buffer, neither
>>> null-terminated nor null-padded, that is defined not to contain null
>>> bytes?
>>
>> NGINX uses these internally:
>>
>> $ grepc ngx_str_t
>> ./src/core/ngx_string.h:16:
>> typedef struct {
>>    size_t      len;
>>    u_char     *data;
>> } ngx_str_t;
>>
>>
>> Basically it's a non-zero buffer plus its length.  They have interesti=
ng
>> properties; for example, you can take a substring (or should I call it=

>> sub-sequence) just by taking a pointer to somewhere in the middle, and=

>> the length of the substring, without really copying the string.
>=20
> same with a buffer without restriction of null bytes

Yep; in fact, ustpcpy() is just mempcpy(3) but with char* instead of void=
*.

>=20
>>>  And how do functions behave that want a character sequence if
>>> that does contain a null byte?  Do they take the null byte to signal =
the
>>> character sequence's end?  Need they accept the null byte as part of =
the
>>> character sequence?  Is the behavior undefined?
>>
>> NGINX handles these strings by the length stored in the buffer.  Any
>> null byte in the middle of a string would be treated as any other
>> character, although they would be problematic when interfacing libc; i=
n
>> general, care is taken to not have null bytes in those strings.  NGINX=

>> uses mempcpy(3) (or rather, ngx_cpymem(), which is the same thing) to
>> copy these things, or other more sophisticated functions and macros
>> based on mempcpy(3).
>>
>> $ grepc ngx_cpymem
>> ./src/core/ngx_string.h:97:
>> #define ngx_cpymem(dst, src, n)   (((u_char *) ngx_memcpy(dst, src, n)=
) + (n))
>>
>>
>> ./src/core/ngx_string.h:107:
>> #define ngx_cpymem(dst, src, n)   (((u_char *) memcpy(dst, src, n)) + =
(n))
>=20
> I think if you want to pseudo-standardize terminology, you should=20
> mention how functions are supposed to behave when seeing a null=20
> byte in a character sequence.  (I plead for undefined behavior.)
>=20
> Now, do you think character sequences are more common than simple=20
> buffers, than not caring at all about the specific bytes?  That=E2=80=99=
s=20
> what I do; that=E2=80=99s what I think should be usually done.  And do =
you=20
> suppose character sequences are more valuable than simple buffers? =20
> Sure, iff the sequences are null-terminated, you can use them as=20
> strings, too, but that doesn=E2=80=99t seem like much of a benefit.

The benefit of differentiating them, and making sure that certain buffers=

(let's call those character sequences) do not have null bytes, allows you=

to transform into a string just by appending a null byte, and you already=

know the length.  That's extensively (ab)used in the code base in which I=

work (nginx).

Of course, you could argue that you'll know if you have null bytes in
those buffers or not, and if you're going to use them as strings, you
probably don't write zeros in the middle, and can just reuse the term
buffer for them.  But I prefer to use a term to differentiate them with
a different term in this page, I think.

>=20
>>> And lastly, the man page doesn't list the functions' standards or who=

>>> invented them.
>>
>> That was deliberate.  The specific pages of each of those functions
>> already documents that.  Since the intention was to differentiate the
>> use cases of each of the functions, I believe mentioning the standards=

>> would just deviate from that main point, and so I omitted that info.
>> The point is that choosing one of these functions shouldn't depend on
>> what standards are available to the programmer.  Instead, the
>> programmer should use the appropriate function, and then if it's not
>> available, it should be written within the project (probably as a
>> wrapper around other functions) to be able to use it.  That's why I
>> provided some naive implementations of some of them.
>=20
> That=E2=80=99s not a bad idea, but for some functions, this is the man =

> page.  I wondered where stpecpy comes from, I tried to open=20
> stpecpy(3), I got string_copying(7).

Hmm, there's some notes that they aren't defined elsewhere:

              This function is not provided by any library; See  EXAM=E2=80=
=90
              PLES for a reference implementation.

and then in EXAMPLES:

   Implementations
       Here  are  reference implementations for functions not provided
       by libc.



I could have added a STANDARDS section that covers those, but I decided
to not do that, and instead force one to read the entire page to learn
that info.  :)

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------ERHAj10x0VWXG0bMsbNMxqbN--

--------------hXf3MI355TXicoL4sII0QaST
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTFAGsACgkQnowa+77/
2zIosxAAkmGOCMG4Ou2MFmOLIJ/QuqxRGBEAWkBGLkvuFbPP1cgnT1FjtsTrGlQH
n2KmAw1479XDHwY4fI5+ZY6+WE1m73k7fcatarPIu9e7rs7apKNciDZJ3+NnrxQG
gi1F4xHWjbDB5z/aFsuReXv4r6zQd1+xC5BXDY+1Tk85ckqQ+tsv83leuaz/Aua2
XW8fuN1VK7kICspbOxcX74cBm0uI8PqrjJ5Oe3eoWLXr8BCnkxK3h0wbjlpMUHSf
tItGCxq6ibNTAHRla2FQxRs7EAGq6hFgiknZNBTl6iYVuvJ2cXx05LpIFawxJdiZ
7QpSvEdAQ8P8VZ3zXVsZHZryqxoFyuI9ESiJ7KhBp8TX10Rh5EVueo9TVHIfyHhf
hTeby1/xu0C5XoiUTwrf9He/YcszO6U+2C2IbaBCqTKI4pcNccSCiPuzLdoW4NyK
d5LtPjegv3iUc2exOXkYg474xTSsKM3XAfxvmz8VwOy09PN0NWWZZAYOvixsoaVN
TLjkZFDUoKyk9M2WSPwa0w/qJHcf4U64/VHxj2F1MD8kFznSloZThOyC7K+dqFnP
arqzH62fypVd20Q8cNq1tRHlreJnfnvgWq0EYYjBZtQp+J/1/5DZ3yAq4i/aLLWM
MOtaO/gJ4ZYzpQfF7oPxBhlhtQ3Rb5nnH6Jn5nx6c+deUET4SFA=
=A2cd
-----END PGP SIGNATURE-----

--------------hXf3MI355TXicoL4sII0QaST--
