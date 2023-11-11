Return-Path: <linux-man+bounces-39-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C117E8D25
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 23:36:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9395FB20A31
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 22:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0DED134C1;
	Sat, 11 Nov 2023 22:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiSIfMx0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651CA1CABC
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 22:36:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39634C433C9;
	Sat, 11 Nov 2023 22:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699742172;
	bh=uZzHH/E5abMJ3/ZVoxVYJI21duM9XOagWGb7uHBMWpA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GiSIfMx0MT/3ZFk7X+wbb2xoztDRwnMKA4WjBmfJYEURe0ksAzgsQO5C+iLn0JLhK
	 JHKqRYgIbinOEMUVx7yZk7QKuZwpaQtX/yjq+K/i39cYBPXaleQlNm0cVzr4y1GmxG
	 hMy4qP7ETa9J8NHwq5/gkfheGYfpk3C0QVJSXDH1YdPcOdgdwRaGlmZH0k/4U+KluV
	 k1WE0xRdcs3GTXAnxUTs0A65C4aLhDc3NdDgLBkf0Tsm9SIbF67iUsxJsgKa8r8Sk+
	 Nkj1tK2pFQv4/TIw2ZPFM/Zg66jThIr8eAIEgiKSyWcacnjomWH9KAhJ4s1xmWvQyx
	 6aHAwDP/XJh1A==
Date: Sat, 11 Nov 2023 23:36:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZVAB2S-IxKLABk_w@debian>
References: <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <ZUzPNydLkFPEvvsa@debian>
 <20231110160602.352085-1-mattlloydhouse@gmail.com>
 <fb0e2940-3446-4d44-95d7-f7be1f26096f@jguk.org>
 <bb41a959-eb58-4376-b2b7-6b6ad7a7dd5a@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3LeTAi5nnStjurZr"
Content-Disposition: inline
In-Reply-To: <bb41a959-eb58-4376-b2b7-6b6ad7a7dd5a@jguk.org>


--3LeTAi5nnStjurZr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Nov 2023 23:36:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

Hi Jonny,

On Sat, Nov 11, 2023 at 09:15:12PM +0000, Jonny Grant wrote:
> Alejandro
>=20
> I was reading again
> https://man7.org/linux/man-pages/man7/string_copying.7.html
>=20
> Sharing some comments, I realise not latest man page, if you have a new o=
ne online I could read that. I was reading man-pages 6.04, perhaps some alr=
eady updated.

You can check this one:

<https://www.alejandro-colomar.es/share/dist/man-pages/6/6.05/6.05.01/man-p=
ages-6.05.01.pdf#string_copying_7>
also available here:
<https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-pages-6.=
05.01.pdf#string_copying_7>

And of course, you can install them from source, or read them from the
repository itself.

> A) Could simplify and remove the "This function" and "These functions" th=
at start each function description.

Fixed; thanks.

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D53ea8765ed7f9733abf96e86df89619dc3d203ef>

>=20
> B) "RETURN VALUE" has the text before each function, rather than after as=
 would be the convention from "DESCRIPTION", I suggest to move the return v=
alue text after each function name.

Fixed; thanks.

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D76316bd6f98c58d70c2330f7d2a945aac7c76dd8>

>=20
> Could make it like https://man7.org/linux/man-pages/man3/string.3.html
>=20
> C) In the examples, it's good stpecpy() checks for NULL pointers, the oth=
er's don't yet though.

The reason is interesting.  I also designed a similar function based on
snprintf(3), which can be chained with this one.  Since that one can
return NULL, and to reduce the number of times one needs to check for
errors, I added the NULL check.

alx@debian:~/src/shadow/shadow/master$ grepc -tfd stpeprintf .
=2E/lib/stpeprintf.h:inline char *
stpeprintf(char *dst, char *end, const char *restrict fmt, ...)
{
	char     *p;
	va_list  ap;

	va_start(ap, fmt);
	p =3D vstpeprintf(dst, end, fmt, ap);
	va_end(ap);

	return p;
}
alx@debian:~/src/shadow/shadow/master$ grepc -tfd vstpeprintf .
=2E/lib/stpeprintf.h:inline char *
vstpeprintf(char *dst, char *end, const char *restrict fmt, va_list ap)
{
	int        len;
	ptrdiff_t  size;

	if (dst =3D=3D end)
		return end;
	if (dst =3D=3D NULL)
		return NULL;

	size =3D end - dst;
	len =3D vsnprintf(dst, size, fmt, ap);

	if (len =3D=3D -1)
		return NULL;
	if (len >=3D size)
		return end;

	return dst + len;
}
alx@debian:~/src/shadow/shadow/master$ grepc -tfd stpecpy .
=2E/lib/stpecpy.h:inline char *
stpecpy(char *dst, char *end, const char *restrict src)
{
	bool    trunc;
	char    *p;
	size_t  dsize, dlen, slen;

	if (dst =3D=3D end)
		return end;
	if (dst =3D=3D NULL)
		return NULL;

	dsize =3D end - dst;
	slen =3D strnlen(src, dsize);
	trunc =3D (slen =3D=3D dsize);
	dlen =3D slen - trunc;

	p =3D mempcpy(dst, src, dlen);
	*p =3D '\0';

	return p + trunc;
}


Then you can use them like this:


	    end =3D buf + sizeof(buf);
            p =3D buf;
            p =3D stpecpy(p, end, "Hello ");
            p =3D stpeprintf(p, end, "%d realms", 9);
            p =3D stpecpy(p, end, "!");
            if (p =3D=3D end) {
                p--;
                goto toolong;
            }
            len =3D p - buf;
            puts(buf);


Regarding other string-copying functions, NULL is not inherent to them,
so I'm not sure if they should have explicit NULL checks.  Why would
these functions receive a null pointer?  The main possibility is that
the programmer forgot to check some malloc(3) call, which should receive
a different treatment from a failed copy, normally.

> D) strlcpy says
> "These functions force a SIGSEGV if the src pointer is not a string."
> How does it determine the pointer isn't a string?

By calling strlen(src).  If it isn't a string, it'll continue reading,
and likely crash due to an unbound read.  However, the SIGSEGV isn't
guaranteed, since it may find a 0 well before crashing, so I removed
that text.  It is a feature and a bug of these functions: they can find
programming errors where one passes a character sequence where a string
is expected, and crash the program to nosily report the programmer
error.  But that also makes it very slow, as Paul said.

>=20
> E) Are these functions mentioned like ustpcpy() standardized by POSIX? or=
 in use in a libc?

No.  They are my inventions, like stpecpy().  It seems I forgot to add a
"This function is not provided by any library" in some of them.

Fixed; thanks.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D9848ac50ceb6cc4d786b3899ee4626959e5f1d81>

>=20
> F)=20
> char *stpncpy(char dst[restrict .sz], const char *restrict src,
>                       size_t sz);
> I know the 'restrict' keyword, but haven't seen this way it attempts to s=
pecify the size of the 'dst' array by using the parameter 'sz' is this in w=
ide use in APIs? I remember C11 let us specify  char ptr[static 1] to say t=
he pointer must be at least 1 element in this example

It continues meaning the same thing.  If you use array notation, the
restrict must be placed inside the brackets.  The following two snippets
are equivalent C code:

	void foo(int *p, int *restrict x);
	void foo(int *p, int x[restrict 7]);

Since I didn't use 'static', to ISO C the array notation is ignored.
GCC, however, will be reasonable and understand it.  To GCC, there's not
much difference between the following:

	[[gnu::nonnull]]
	void bar(int x[7]);
	void bar(int x[static 7]);

And of course, you can combine static and restrict:

	void baz(int *p, int x[static restrict 7]);

>=20
> Saw a few pages started to write out functions like
> size_t strnlen(const char s[.maxlen], size_t maxlen);
>=20
> Is this just for documentation? usually it would be: const char s[static =
maxlen]

I don't like static for array parameters.  Specifying a size for a
parameter should similarly signify to the compiler that it should expect
no less than N elements.  This is how GCC behaves.

And static has another implication: nonnull.  IMO, nonnull is tangential
to array size, and should be specified separately with its own attribute
or qualifier.  I'd like to be able to specify the following different
cases:

	void f1(int [10]);  //  NULL, or array of size >=3D 10
	void f2(int [_Nonnull 10]);  // Array of size >=3D10

With static, I can only do the second.  Quite unreasonable.


Regarding the '.', consider the following two snippets:

	int size;  // This is the size of s[size].
	void g1(char s[size], size_t size);

You could be tricked to think that the size of s[] is the second
parameter to the function, but it's the global variable size.

	void g2(char s[size], size_t size);

Here's, since there's no global size, the code won't even compile.
There's no way to use a parameter that comes later as a size, conforming
to ISO C.  We were discussing this [.identifier] syntax in linux-man@
and gcc@, as a possible extension.  We haven't yet decided on it, but
I'm previewing it as a documentation extension for now.  The rationale
for the syntax comes from similarity with designated initializers for
structures.

>=20
> G) "Because these functions ask for the length, and a string is by
> nature composed of a character sequence of the same length plus a
> terminating null byte, a string is also accepted as input."
>=20
> I suggest to adjust the order so it doesn't start with a fragment:
>=20
> "A string is also accepted as input, because these functions ask
> for the length, and a string is by nature composed of a character
> sequence of the same length plus a terminating null byte."
>=20
> Could simplify and remove "by nature".

Yep; thanks.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D78b2ff8c6f25654648f0fa06c310b87a7e49128e>

>=20
> Unrelated man page strncpy, noticed this.
>=20
> SEE ALSO
> Could this refer to strcpy(3) and string(3) at the bottom?
> https://man7.org/linux/man-pages/man3/strncpy.3.html

I removed it on purpose, because I intended to put some distance between
strncpy(3), and strings and string-copying functions like strcpy(3).

That's why I point to string_copying(7), where readers should be
educated of all of the differences.  Then, string_copying(7) has a more
complete SEE ALSO, because it has already detailed all the different
functions, and the reader is ready to read the individual pages.

Kind regards,
Alex

>=20
> With kind regards
> Jonny
>=20
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--3LeTAi5nnStjurZr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVQAdkACgkQnowa+77/
2zIWlQ//d1RrAZEAAOEFtq+71ml89A5wEweqfLuwg+mnS3y9st+KM9OMCBcrfkiX
PcahtAPTtjC0EzYseaY6G9EYaFIjNxDWEzarPdFnHE9n3IYPIKI1E08+Du7s+9gu
q+5hJEetJNAWSLGtuHBAsJYOoq9EgQ8QAf1tpmVa4zlEfcvPuuX/RP0EiTrK6CXM
tD+GX176Oe3FN/05bUqHyyPs+OabTJMnwLDsOLzcY2wfpmmBZmJDP0GdIXZRzZpa
eAQay4OH0mFOi3OVSXWewNFEshDzFkoHkaDq5U22HGtldMZ3BhkYGh8kzonC4HCk
cnWvQrElf00TgixEVdBRH1mJd07Gdto2FOrB31xTY9b9BwGe584fvhuQPCEPq3hf
YaeWSolLQ54wTQwNS+Pd+cmhxm6i7+A8GVfNdlKai9IJedl3vVnNtGytOQZk+ipN
tz1eIAiVEekqlLfGSnHexq6PSt9+uwearG/AQjZtAVVXuKAz+foNCnNxTXMSn1/X
ul4RLBymRs6FelifDrdgh6FURr97OfsvKZDs/1ApVqxR3kees09cu2T5ckxV9yop
wpvcvujlYVxc8yBQvjXTQvYwJLo9e27fu8K2S6KvRUSVu+g9K86vTpxCWxa3k3Pb
Tq05ruWy+lF8r6vC2tOoQDpnNqbGBcJb67jSlKQ6dInZklu+6Ng=
=h60G
-----END PGP SIGNATURE-----

--3LeTAi5nnStjurZr--

