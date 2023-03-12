Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8332D6B6BCB
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 22:39:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230354AbjCLVjg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Mar 2023 17:39:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230179AbjCLVjf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Mar 2023 17:39:35 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD8DA34C1F
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 14:39:32 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id k37so6711581wms.0
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 14:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678657170;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XRHPsAi5YXa8alpSSxeBY1BLvU0HEuOCCN2wxJQ6UZs=;
        b=qKC/+C79hjOV7pLxFgokDsyEdzCIKGsbYyYv+8LjDuLGNQRwaGHkgYY/+pJ8ghGSg4
         F3CKhPpkDTIGnDfn17Ql/Y/zZpJwJGuRxDGDu5eqQ8EKJS77y2bY2LHZ6H026mDTSnQp
         1EFQ4FrD7uAYFLc3qV+UT5zNLXKRwpIXFXXsBT2OUH++RSnZeBClZcsCW0gbhRo3p4tX
         iEKf2xGa7LAy2u5O0b05uuQZNWBdzDUjnHkeyNQt4vHEK/hLVcaecy20NAPGKqNYQjbK
         3Sx47Te4QaEZwwE71zCqlilPjTWjjrR7JCFfN7Y8MMyU8gxejfC7n+sW/NfHEkiKVibU
         PHAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678657170;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XRHPsAi5YXa8alpSSxeBY1BLvU0HEuOCCN2wxJQ6UZs=;
        b=egPFd6Z2M3RiYi/R96rAgHDeiErx1NDAin2vIPX/8RyiR0k9tXHOYOO+buBIjSajug
         xrbxt3INVxDn63lsMK6zAXsH0wi77V0dnZBAFdBkqpXqtGEJrOAC+4YDD+q7F2vOyi2Y
         EmiVNJl8fFHrjJ+28g4+KVNoGblBBR0kbn6Uos8pUfvyMvlwlsV0r9+1qvsbKAFH6rjw
         /Od/rxtjXp2lUCWcSCRT2UNCSzRXrtfetGmTRyklqgdT1A2JQjFKXrAO03vRRQfjNqng
         9HBvrm2U0HgFIza2GQRwYi00K9KhSktDPKwhmOhA1b/HCM8WSvIznd6BNmGaH2fZbEyw
         Iq2w==
X-Gm-Message-State: AO0yUKULKrzMhSj6yhEihRiovb0FvaCHE3c1ueSLHhQ7gZFVi7gUatbK
        MZXXZ+0QSAvxhc6Stqxmt2E=
X-Google-Smtp-Source: AK7set/gYEMNH174h/czUb3Wr8xmRF/bnwGnjbceOvbfVlX5wh/Y5Gm8naw6kZzcyxrfWY4O5E6SeQ==
X-Received: by 2002:a05:600c:3b08:b0:3eb:38a2:2bd2 with SMTP id m8-20020a05600c3b0800b003eb38a22bd2mr8989213wms.11.1678657169928;
        Sun, 12 Mar 2023 14:39:29 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id h9-20020a05600c2ca900b003daf7721bb3sm6145887wmc.12.2023.03.12.14.39.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 14:39:29 -0700 (PDT)
Message-ID: <e35baa3f-91af-dfb2-2ec8-cc2dea002f79@gmail.com>
Date:   Sun, 12 Mar 2023 22:39:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] man7/: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        groff@gnu.org, Helge Kreutzmann <debian@helgefjell.de>
References: <20230312110203.3898-1-alx@kernel.org>
 <20230312164434.ga3hkxnszly7agk5@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230312164434.ga3hkxnszly7agk5@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jaasqvahqi5PNGMSEJhA5Rpg"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------jaasqvahqi5PNGMSEJhA5Rpg
Content-Type: multipart/mixed; boundary="------------tn5wylI8cndbZouXC0D02q6I";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 groff@gnu.org, Helge Kreutzmann <debian@helgefjell.de>
Message-ID: <e35baa3f-91af-dfb2-2ec8-cc2dea002f79@gmail.com>
Subject: Re: [PATCH] man7/: ffix
References: <20230312110203.3898-1-alx@kernel.org>
 <20230312164434.ga3hkxnszly7agk5@illithid>
In-Reply-To: <20230312164434.ga3hkxnszly7agk5@illithid>

--------------tn5wylI8cndbZouXC0D02q6I
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 3/12/23 17:44, G. Branden Robinson wrote:
> Hi Alex,
>=20
> Short answer: take the patch.  :)

I pushed it earlier today.  :)

> At 2023-03-12T12:02:04+0100, Alejandro Colomar wrote:
>> Should I apply this patch?  I'm not sure if the variable part should
>> be bold because it's part of a heading or roman because it's variable
>> part within italics.  How would you format it?

[...]

> Long answer:

[...]

> I prefer the former to the latter, and would apply the patch.

Good.

>  In groff
> 1.23.0 (which still doesn't have its final tag :( ), the man(7) macro
> package remaps the `I` (italic) style to `BI` (bold+italic) if it is
> available and the font being used for (subsection) headings is
> configured to be bold.

Yup, I tested it only with 1.23.0-rc3.  I assume 1.22.4 will do
something reasonable, but probably not so good.

[...]

> However, if it were my man page, I might recast the headings entirely t=
o
> describe the files--or rather their purpose--in English, avoiding both
> the use of escape sequences and concern with typeface changes.

It doesn't itch me enough to do the work.  :)

[...]

>=20
> [1] (groff war story)
>=20
>     As I recall, a few years ago Ingo Schwarze once lobbied me to take
>     out the "Options" sections of groff's section 1 man pages using a
>     similar argument, claiming that options should be motivated and
>     discussed within the "Description" section in a more organic manner=
=2E
>     (And I did in fact change our nroff(1) page to do this, to test out=

>     his advice and because GNU nroff is a wrapper--nearly all its
>     options are synonymous with groff(1) or troff(1) options).  He's no=
t
>     wrong, but because GNU programs tend to have many options (also a
>     defect, in his view and others', like Rob Pike[2]) and because man
>     pages are so frequently consulted to determine what a command optio=
n
>     is for, I decided I could not dispense with them.

Heh, I remember having some problem related to this reading mandoc(1)
(or maybe it was mdoc(7)).  I don't remember which it was, but having
a quick look at mandoc(1), I found some flag insufficiently documented:
'-l'.  See the only mentions in his page:

       MANPAGER  Any  non=E2=80=90empty  value  of  the  environment  var=
iable
                 MANPAGER is used instead of the  standard  pagination
                 program,  less(1); see man(1) for details.  Only used
                 if -a or -l is specified.

       PAGER     Specifies the pagination program to use when MANPAGER
                 is not defined.  If neither PAGER nor MANPAGER is de=E2=80=
=90
                 fined, less(1) is used.  Only used if  -a  or  -l  is
                 specified.

That's probably a glitch of not having a comprehensive list of options
and their description.

Going more into what concerns me, which is man3, I often miss an
ARGUMENTS (or PARAMETERS, to be more precise) section in the pages for
functions.  Sometimes it would be just one line per argument, but in
other cases it would help a lot have more organized information.  I'll
show you a few cases where I've used it, and where I think it made a
difference.

<https://github.com/shadow-maint/shadow/blob/master/lib/stpecpy.h>
<https://github.com/shadow-maint/shadow/blob/master/lib/stpeprintf.h>
<https://github.com/shadow-maint/shadow/blob/master/libmisc/agetpass.c>


 * SYNOPSIS
 *	char *_Nullable stpecpy(char *_Nullable dst, char end[0],
 *	                        const char *restrict src);
 *
 * ARGUMENTS
 *	dst	Destination buffer where to copy a string.
 *
 *	end	Pointer to one after the last element of the buffer
 *		pointed to by `dst`.  Usually, it should be calculated
 *		as `dst + NITEMS(dst)`.
 *
 *	src	Source string to be copied into dst.
 *
 * DESCRIPTION
 *	This function copies the string pointed to by src, into a string
 *	at the buffer pointed to by dst.  If the destination buffer,
 *	limited by a pointer to its end --one after its last element--,
 *	isn't large enough to hold the copy, the resulting string is
 *	truncated.
 *
 *	This function can be chained with calls to [v]stpeprintf().



 * SYNOPSIS
 *	[[gnu::format(printf, 3, 4)]]
 *	char *_Nullable stpeprintf(char *_Nullable dst, char end[0],
 *	                           const char *restrict fmt, ...);
 *
 *	[[gnu::format(printf, 3, 0)]]
 *	char *_Nullable vstpeprintf(char *_Nullable dst, char end[0],
 *	                           const char *restrict fmt, va_list ap);
 *
 *
 * ARGUMENTS
 *	dst	Destination buffer where to write a string.
 *
 *	end	Pointer to one after the last element of the buffer
 *		pointed to by `dst`.  Usually, it should be calculated
 *		as `dst + NITEMS(dst)`.
 *
 *	fmt	Format string
 *
 *	...
 *	ap	Variadic argument list
 *
 * DESCRIPTION
 *	These functions are very similar to [v]snprintf(3).
 *
 *	The destination buffer is limited by a pointer to its end --one
 *	after its last element-- instead of a size.  This allows
 *	chaining calls to it safely, unlike [v]snprintf(3), which is
 *	difficult to chain without invoking Undefined Behavior.



 * SYNOPSIS
 *	[[gnu::malloc(erase_pass)]]
 *	char *agetpass(const char *prompt);
 *
 *	void erase_pass(char *pass);
 *
 * ARGUMENTS
 *   agetpass()
 *	prompt	String to be printed before reading a password.
 *
 *   erase_pass()
 *	pass	password previously returned by agetpass().
 *
 * DESCRIPTION
 *   agetpass()
 *	This function is very similar to getpass(3).  It has several
 *	advantages compared to getpass(3):
 *
 *	- Instead of using a static buffer, agetpass() allocates memory
 *	  through malloc(3).  This makes the function thread-safe, and
 *	  also reduces the visibility of the buffer.
 *
 *	- agetpass() doesn't reallocate internally.  Some
 *	  implementations of getpass(3), such as glibc, do that, as a
 *	  consequence of calling getline(3).  That's a bug in glibc,
 *	  which allows leaking prefixes of passwords in freed memory.
 *
 *	- agetpass() doesn't overrun the output buffer.  If the input
 *	  password is too long, it simply fails.  Some implementations
 *	  of getpass(3), share the same bug that gets(3) has.
 *
 *	As soon as possible, the password obtained from agetpass() be
 *	erased by calling erase_pass(), to avoid possibly leaking the
 *	password.
 *
 *   erase_pass()
 *	This function first clears the password, by calling
 *	explicit_bzero(3) (or an equivalent call), and then frees the
 *	allocated memory by calling free(3).
 *
 *	NULL is a valid input pointer, and in such a case, this call is
 *	a no-op.


It's kind of a synopsis of the parameters.  Would it be better _after_
the description?  Maybe.  Is it better than having it all in the
description?  I think it is.  Will we see this in the Linux man-pages
some day?  Maybe.  What's your opinion?

>     Another reform to groff's man pages that I undertook was to begin
>     shifting more discursive material earlier in the page.  A popular
>     approach to man page organization for section 1 and 8 pages is to
>     have a single paragraph of overview followed immediately by the
>     "Options" section, which promptly starts referring to technical
>     details, sometimes obscure ones, that the reader must already
>     comprehend or which are not properly presented until later in the
>     document.  As you may suspect, I dislike that.  Ingo felt that if I=

>     was going to have an Options section at all, I should keep it up
>     high so it would at least start on the first pager screen--I think
>     this was meant for the convenience of the expert reader.  But I
>     think this approach sacrifices too much accessibility to the
>     learner.  One should be able to read a man page linearly and feel
>     one's understanding of the topic building.  Some people would retor=
t
>     that man pages are meant as a reference, not a tutorial.  My counte=
r
>     is that while they generally aren't tutorials, terming one's page a=

>     "reference" does not excuse one from covering the domain-specific
>     knowledge that another needs to acquire to competently use the
>     software at issue.

Yup, I think the man pages should serve as both (short) tutorials *and*
quick references.  If I need further info, I go to StackOverflow, but
I'd like to understand at least the basics of a function when reading
its page (and I've learnt many of the man3 functions by reading the
pages while maintaining them; for example, I didn't even know there was
a regex(3) function until I saw the page being mentioned in a ffix
patch by Michael; a few weeks later I needed it, and could use it by
just reading the manual; then I added the example program with
something close to what I did with it).

Something I do is first look at the synopsis, have a quick look at the
description searching for one line that describes each argument, and
then look at the example program to guess myself about the function.
Only after that is when I try to read the entire page to know the details=
=2E
But most of a function should be obvious already before reading the
description, or the design of the function would be dubious.

>  I think the boot(8) and crash(8) pages from the
>     V7 Unix manual (1979) are examples, from an esteemed source, of how=

>     discursive--nigh-on tutorial--a man page of good reputation can get=
=2E
>=20
>     My opinion is that the reader who is already familiar with the
>     page's material can type "/Options" in their pager to navigate ther=
e
>     if they are in a hurry.  Alternatively, thanks to Deri James, they
>     can view man pages as PDFs, open up the navigation pane of their PD=
F
>     viewer, and click on "Options".  A good conversion to HTML enables
>     this, too.

Which reminds me that when I move to 1.23.0 as a dependency, we should
have another look at Deri's script, and simplify it.

Cheers,

Alex

>=20
> [2] http://harmful.cat-v.org/cat-v/

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------tn5wylI8cndbZouXC0D02q6I--

--------------jaasqvahqi5PNGMSEJhA5Rpg
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQORokACgkQnowa+77/
2zKL7xAAhChl942gvuvo3le9o4x2fQfXkoJoPlQNs179ZgWrGEnba6GJ/aRqvRjX
xTipqxMosQ83xIWJHWEDGz538hpRtLR0wYBJRNDyO/YBtk5fRwidRxNKWz2+mQf2
66Qjxq1q77Ae+rpGpvHg7HIssR1K9ehb4nQfqctkEsVByOzhV9WFCWavGxPCwlnx
kkQMhKxBkc9JdHNiGuRIPkrXDTENaFUWWi1k/WNv4NIT2pa4TqQ27tQ4UgAlvbZ0
dENGg5WCIA8T/ebyOGL2bSlt9DpocnuAikckMn0T1vc2ziEZ0C8i8hgzQCY71hAJ
NnZ5Ki/2mvC8PeabN0Hxi6CtY9ur9PmKlDFAuDds8ERuiDCLwGnk8Iln7x83VSup
jZ8XOhc2oRqR5nGSrlMNZcLmbQyamBGU1HlDSId13S9kIr/g1IxMziAuZH/zdnPS
wnw+q18v8cVoa5wKcy11UEzpUEjgwZrLRtLLN7uZuVoxPdb1eDslS2wWlGRKEmEC
BIyvWJTOzPW1P9WENvvNd/WA3zpTW+Pc6p9b6kSBy7bmdmXLKoUNuD/ZoC6pIBW+
QJ4tjXen/fTsDri+a9Yl3F0zEpA17BazsdibBCBG4FBOax+DxabE9uV4eJoQqEXq
RgODY8sJaKFJmqywGjgs/pM0h9F66xWxTgpWywI63sKEf6FJR1s=
=lEoj
-----END PGP SIGNATURE-----

--------------jaasqvahqi5PNGMSEJhA5Rpg--
