Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CE0E6D7176
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 02:42:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236560AbjDEAmW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 20:42:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236431AbjDEAmV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 20:42:21 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3520B1709
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 17:42:19 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id v6-20020a05600c470600b003f034269c96so10808573wmo.4
        for <linux-man@vger.kernel.org>; Tue, 04 Apr 2023 17:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680655337; x=1683247337;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D54pv4y4m8XnShOW9bV3QbrLdJSzirrOLyHYSFICVHY=;
        b=XTNrir7FDeLh1eUKpw+w2YJOeVO3Edohzz2M8xpSSFD7B2lyma2ZJxb5kaOrTeLfw6
         N0E8Q8DzVmVXmpHvdDDdox4JQYD3M9wiwP2iZO+8OsJwSyejniBSTFeW3wWwf85UIfL/
         6Wg7KvxzuVcJXfVik4EjeSSegqY07gKryRlFauupUkesPE+qBMkJv/CeDZ+u97DAe1B7
         RBA9Fquu2eaWiQNbTmNmP0ETYkFHo+sSjEbPNHxZYp8Wm1NrE2GzObGVIfptUyihNlkI
         /pConBwFG/t0wdi3M8DsecmkDmOeQfVIjQI3VUtek3Gr6+a+mpEEVUeQEvshoypaAzTq
         Ur9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680655337; x=1683247337;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D54pv4y4m8XnShOW9bV3QbrLdJSzirrOLyHYSFICVHY=;
        b=0XYD2BlzPD/3POr3FoRpuhi3z0paDQRE/P3C5X3qpZT8gbT0k3PdbgoLY5IIWfJI+p
         rkLLHmVByb1nG6ZBSBHdq7sPuvyV1OPPC5ac5YwMTdMn9rFUUwxWTcccN/jxMPmHt5yb
         3zKLkrOH4rrDaQe4zGryimmHEwaYcUZCl4yR/stbL8TzqL2/4HYzU+23QZYm2hkeG3Y9
         1fUpSbzKQtOG8Frvq9EjVfigrs6WaCXEw/DFB3CRW0DOm/9xyq2rAHW16L+AlWMX2zN/
         twJx1DZxUGtWv9NIymvApoKG2JYVaawhJTcbfCfuDH+Vamr55g4OsY5lcMM3BE9jtIad
         8G1Q==
X-Gm-Message-State: AAQBX9eijhH7KQDCud1Wwpl0Blvtt7sSMKJ4Bpj0cdG2JewS1EezYV25
        LU9RJi53iQwB20+IYzhOVmI=
X-Google-Smtp-Source: AKy350ZK22iEpS02nTUutgn194bXImjXGMzwb79yv8FHwgDwD2LomTXDASSYnEys+Ff/7pnOJV90ug==
X-Received: by 2002:a05:600c:b91:b0:3ed:bfb4:ad9f with SMTP id fl17-20020a05600c0b9100b003edbfb4ad9fmr579331wmb.2.1680655337415;
        Tue, 04 Apr 2023 17:42:17 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id p23-20020a1c7417000000b003eb596cbc54sm498027wmc.0.2023.04.04.17.42.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 17:42:16 -0700 (PDT)
Message-ID: <9b528ba9-e1c6-1c03-8ec7-177c4dc66e19@gmail.com>
Date:   Wed, 5 Apr 2023 02:42:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] sockaddr.3type: Document that sockaddr_storage is the API
 to be used
Content-Language: en-US
To:     Eric Blake <eblake@redhat.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
        glibc <libc-alpha@sourceware.org>, GCC <gcc@gcc.gnu.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>, Rich Felker <dalias@libc.org>,
        Andrew Clayton <andrew@digital-domain.net>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>, Sam James <sam@gentoo.org>
References: <20230330171310.12330-1-alx@kernel.org>
 <ga44kb7s2atbgl6exbjvpffp6czurhxff4nxf7ugflyfpjhlb5@pvwnm2udgso5>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ga44kb7s2atbgl6exbjvpffp6czurhxff4nxf7ugflyfpjhlb5@pvwnm2udgso5>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9bBrGU68Wa3xmGgcBc0hQQvk"
X-Spam-Status: No, score=-2.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------9bBrGU68Wa3xmGgcBc0hQQvk
Content-Type: multipart/mixed; boundary="------------Ga2X8DYufhlgttNZjKruxy7w";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Eric Blake <eblake@redhat.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
 glibc <libc-alpha@sourceware.org>, GCC <gcc@gcc.gnu.org>,
 Stefan Puiu <stefan.puiu@gmail.com>, Igor Sysoev <igor@sysoev.ru>,
 Rich Felker <dalias@libc.org>, Andrew Clayton <andrew@digital-domain.net>,
 Richard Biener <richard.guenther@gmail.com>,
 Zack Weinberg <zack@owlfolio.org>, Florian Weimer <fweimer@redhat.com>,
 Joseph Myers <joseph@codesourcery.com>, Jakub Jelinek <jakub@redhat.com>,
 Sam James <sam@gentoo.org>
Message-ID: <9b528ba9-e1c6-1c03-8ec7-177c4dc66e19@gmail.com>
Subject: Re: [PATCH] sockaddr.3type: Document that sockaddr_storage is the API
 to be used
References: <20230330171310.12330-1-alx@kernel.org>
 <ga44kb7s2atbgl6exbjvpffp6czurhxff4nxf7ugflyfpjhlb5@pvwnm2udgso5>
In-Reply-To: <ga44kb7s2atbgl6exbjvpffp6czurhxff4nxf7ugflyfpjhlb5@pvwnm2udgso5>

--------------Ga2X8DYufhlgttNZjKruxy7w
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Eric,

I'm going to reply both your emails here so that GCC is CCed, and they ca=
n
suggest better stuff.  I'm worried about sending something to POSIX witho=
ut
enough eyes checking it.  So this will be a long email.


On 3/30/23 20:36, eblake wrote:
> On Thu, Mar 30, 2023 at 06:25:30PM +0200, Alejandro Colomar wrote:
>> Hi Eric!
>>
>> On 3/30/23 17:22, Austin Group Bug Tracker via austin-group-l at The O=
pen Group wrote:
>>>
>>> The following issue has been RESOLVED.=20
>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
>>> https://austingroupbugs.net/view.php?id=3D1641
> ...
>>
>> Thanks for taking care of this bug!
>=20
> My pleasure.

:-)

>=20
>>
>>
>> On 3/30/23 17:20, Austin Group Bug Tracker via austin-group-l at The O=
pen Group wrote:
>>> On page 386 line 13115 section <sys/socket.h> DESCRIPTION, change:
>>>
>>>     When a pointer to a sockaddr_storage structure is cast as a point=
er to a sockaddr structure, the ss_family field of the sockaddr_storage s=
tructure shall map onto the sa_family field of the sockaddr structure. Wh=
en a pointer to a sockaddr_storage structure is cast as a pointer to a pr=
otocol-specific address structure, the ss_family field shall map onto a f=
ield of that structure that is of type sa_family_t and that identifies th=
e protocol=E2=80=99s address family.
>>>
>>> to:
>>>
>>>     When a pointer to a sockaddr_storage structure is cast as a point=
er to a sockaddr structure, or vice versa, the ss_family field of the soc=
kaddr_storage structure shall map onto the sa_family field of the sockadd=
r structure. When a pointer to a sockaddr_storage structure is cast as a =
pointer to a protocol-specific address structure, or vice versa, the ss_f=
amily field shall map onto a field of that structure that is of type sa_f=
amily_t and that identifies the protocol=E2=80=99s address family. When a=
 pointer to a sockaddr structure is cast as a pointer to a protocol-speci=
fic address structure, or vice versa, the sa_family field shall map onto =
a field of that structure that is of type sa_family_t and that identifies=
 the protocol=E2=80=99s address family. Additionally, the structures shal=
l be defined in such a way that these casts do not cause the compiler to =
produce diagnostics about aliasing issues when compiling conforming appli=
cation (xref to XBD section 2.2) source files.
>>
>> I will add a CAVEATS section in sockaddr(3type) covering this, and wil=
l
>> CC you just to check.
>=20
> Sure, I'll be happy to review.
>=20
> The intent from the meeting (and perhaps requires a bit of reading
> between the lines compared to what was captured as the approved text)
> was that implementations MUST ensure that existing code does not get
> miscompiled under the guise of undefined behavior, but without stating
> how to do it other than suggesting that implementation-specific
> extensions may be needed (somewhat similar as how POSIX requires that
> when dlsym() returns a void* for a function entry point, converting
> that pointer to a function pointer that can then be called MUST be
> compiled to work as intended, even though C doesn't define it).  We
> want the burden to be on the libc and system header providers to
> guarantee defined behavior, and not on the average coder to make
> careful use of memcpy() between storage of different effective types
> to avoid what might be otherwise undefined if it were written using
> types declared using only C99 syntax.
>=20
> Whether gcc already has all the attributes you need is not my area of
> expertise.  In my skim of the glibc list conversation, I saw mention
> of attribute [[gnu:transparent_union]] rather than [[__may_alias__]] -
> if that's a better implementation-defined extension that does what we
> need, then use it.  The standard developers were a bit uncomfortable
> directly putting [[gnu:transparent_union]] in the standard, but
> [[__may_alias__]] was noncontroversial (it's in the namespace reserved
> for the implementation)

Not really; implementation-defined attributes are required to use an
implementation-defined prefix like 'gnu::'.  So [[__may_alias__]] is
reserved by ISO C, AFAIR.  Maybe it would be better to just mention
attributes without any specific attribute name; being fuzzy about it
would help avoid making promises that we can't hold.

> and deemed to be a sufficient hint for
> developers to figure out that they can use whatever works best to meet
> the actual requirement of not letting the compiler optimize away
> socket operations under the premise of undefined behavior.
>=20
>>>
>>> On page 390 line 13260 section <sys/socket.h> APPLICATION USAGE, appe=
nd a sentence:
>>>
>>>     Note that this example only deals with size and alignment; see RA=
TIONALE for additional issues related to these structures.
>>>
>>>
>>>
>>> On page 390 line 13291 section <sys/socket.h>, change RATIONALE from =
"None" to:
>>>
>>>     Note that defining the sockaddr_storage and sockaddr structures u=
sing only mechanisms defined in editions of the ISO C standard prior to t=
he 2011 edition (C11) may produce aliasing diagnostics when used in C11 a=
nd later editions of the ISO C standard. Because of the large body of exi=
sting code utilizing sockets in a way that was well-defined in the 1999 e=
dition of the ISO C standard (C99) but could trigger undefined behavior i=
f C11/C17 aliasing detection were enforced, this standard mandates that c=
asts between pointers to the various socket address structures do not pro=
duce aliasing diagnostics, so as to preserve well-defined semantics. An i=
mplementation's header files may need to use anonymous unions, or even an=
 implementation-specific extension such as a <tt>[[__may_alias__]]</tt> a=
ttribute, to comply with the requirements of this standard.
>>
>>
>> I'm not sure how aliasing rules changed from C99 to C11.  Wasn't
>> aliasing already in C99 (and also in C89)?  I believe this was
>> covered by 6.5.7, which is the same in both C99 and C11.
>>
>> <https://port70.net/~nsz/c/c11/n1570.html#6.5p7>
>> <https://port70.net/~nsz/c/c99/n1256.html#6.5p7>
>=20
> I'm also not sure about where the requirements started making things
> undefined behavior.  I do recall Nick Stoughton mentioning that he
> seems to remember 'restrict' behavior changing between C99 and C11, so
> maybe that's why he assumed that C99 permits the behavior without
> undefined behvaior; but reading
> https://port70.net/~nsz/c/c11/n1570.html#Foreword I don't see anything
> along those lines in C11 that wasn't in C99.  It does mention that
> anonymous unions are new to C11; the Austin Group was unsure whether

Oh, I just learned that anonymous unions are in C11.  I thought they
were GNU extensions.  Nice to know.

> anonymous unions are sufficent to solve the problem on their own
> (without also causing namespace pollution issues), or if an
> implementation-defined extension is needed.  And maybe compilers got
> better at alias detection because of the introduction of anonymous
> unions.

I'm not sure either.

>=20
> At any rate, since you did demonstrate that the C11 and C99 wording is
> essentially the same, I'm happy to forward any alternative wording
> corrections you propose, and I can bring the topic back up in next
> week's meeting (if we decide that C99 indeed has undefined behavior,
> rather than our assumption that it wasn't undefined until C11, we may
> need to issue an interpretation against Issue 7, rather than just
> tweaking the wording for Issue 8 when we swap over to C17 as the
> mandated baseline).

I would just make it more fuzzy about which standard version did what.
How about this?:

[[
Note that defining the sockaddr_storage and sockaddr structures using
only mechanisms defined in editions of the ISO C standard may produce
aliasing diagnostics.  Because of the large body of existing code
utilizing sockets in a way that could trigger undefined behavior due
to strict aliasing rules, this standard mandates that the various socket
address structures can alias each other for accessing their first member,=

so as to preserve well-defined semantics.  An implementation's header
files may need to use anonymous unions, or even an
implementation-specific extension to comply with the requirements of
this standard.
]]

>=20
> And since both C99 and C11 state that accessing the stored value of an
> object is permissible through
>=20
> "a type compatible with the effective type of the object,"
>=20
> it seems like the obvious action in glibc is to do whatever it takes
> to convince the compiler that struct sockaddr, struct
> sockaddr_storage, and all of the individual sockaddr_XX protocol types
> are marked with whatever magic that lets the compiler know that they
> are compatible types (not necessarily according to the C rules of
> compatible types, but according to the rules of the extension
> attribute).  I don't know if glibc can do it in isolation, or if gcc
> will need to invent yet another compiler attribute for glibc's use.
>=20
--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


On 3/30/23 21:11, Eric Blake wrote:
> On Thu, Mar 30, 2023 at 07:13:11PM +0200, Alejandro Colomar wrote:
>> POSIX.1 Issue 8 will fix the long-standing issue with sockaddr APIs,
>> which inevitably caused UB either on user code, libc, or more likely,
>> both.  sockaddr_storage has been clarified to be implemented in a mann=
er
>> that aliasing it is safe (suggesting a unnamed union, or other compile=
r
>> magic).
>>
>> Link: <https://www.austingroupbugs.net/view.php?id=3D1641>
>> Reported-by: Bastien Roucari=C3=A8s <rouca@debian.org>
>> Reported-by: Alejandro Colomar <alx@kernel.org>
>> Cc: glibc <libc-alpha@sourceware.org>
>> Cc: GCC <gcc@gcc.gnu.org>
>> Cc: Eric Blake <eblake@redhat.com>
>> Cc: Stefan Puiu <stefan.puiu@gmail.com>
>> Cc: Igor Sysoev <igor@sysoev.ru>
>> Cc: Rich Felker <dalias@libc.org>
>> Cc: Andrew Clayton <andrew@digital-domain.net>
>> Cc: Richard Biener <richard.guenther@gmail.com>
>> Cc: Zack Weinberg <zack@owlfolio.org>
>> Cc: Florian Weimer <fweimer@redhat.com>
>> Cc: Joseph Myers <joseph@codesourcery.com>
>> Cc: Jakub Jelinek <jakub@redhat.com>
>> Cc: Sam James <sam@gentoo.org>
>> Signed-off-by: Alejandro Colomar <alx@kernel.org>
>> ---
>>
>> Hi all,
>>
>> This is my proposal for documenting the POSIX decission of fixing the
>> definition of sockaddr_storage.  Bastien, I believe you had something
>> similar in mind; please review.  Eric, thanks again for the fix!  Coul=
d
>> you please also have a look at this?
>>
>> Cheers,
>>
>> Alex
>>
>>  man3type/sockaddr.3type | 22 ++++++++++++++++++++++
>>  1 file changed, 22 insertions(+)
>>
>> diff --git a/man3type/sockaddr.3type b/man3type/sockaddr.3type
>> index 32c3c5bd0..d1db87d5d 100644
>> --- a/man3type/sockaddr.3type
>> +++ b/man3type/sockaddr.3type
>> @@ -23,6 +23,14 @@ .SH SYNOPSIS
>>  .PP
>>  .B struct sockaddr_storage {
>>  .BR "    sa_family_t     ss_family;" "      /* Address family */"
>> +.PP
>> +.RS 4
>> +/* This structure is not really implemented this way.  It may be
>> +\&   implemented with an unnamed union or some compiler magic to
>> +\&   avoid breaking aliasing rules when accessed as any other of the
>> +\&   sockaddr_* structures documented in this page.  See CAVEATS.
>> +\& */
>=20
> Do we want similar comments in struct sockaddr and/or sockaddr_XX?

I had understood the POSIX change differently.  Considering your
explanation below, I'll move this to a general NOTES section that
applies to all structures.

>=20
>> +.RE
>>  .B };
>>  .PP
>>  .BR typedef " /* ... */ " socklen_t;
>> @@ -122,6 +130,20 @@ .SH NOTES
>>  .I <netinet/in.h>
>>  and
>>  .IR <sys/un.h> .
>> +.SH CAVEATS
>> +To avoid breaking aliasing rules,
>> +programs that use functions that receive pointers to
>> +.I sockaddr
>> +structures should declare objects of type
>> +.IR sockaddr_storage ,
>> +which is defined in a way that it
>> +can be accessed as any of the different structures defined in this pa=
ge.
>> +Failure to do so may result in Undefined Behavior.
>=20
> Existing POSIX already requires sockaddr_storage to be suitably sized
> and aligned to overlay with all other sockaddr* types.

Alignment allows the pointers to be converted to each other and back,
but for being able to dereference (access) the pointer, you need stronger=

guarantees; basically a veto from the standard to strict aliasing rules,
as the new wording does.

>  What the
> recent POSIX bug change does is add wording to emphasize that casts in
> any of the 6 directions:
>=20
> sockaddr* <-> sockaddr_XX*
> sockaddr_storage* <-> sockaddr*
> sockaddr_storage* <-> sockaddr_XX*

Hmm, okay.  I guess this still doesn't intend to allow traveling
this way:

sockaddr_XX <-> sockaddr_storage <-> sockaddr_YY

Not even for checking the first common member, right?  Just to
be sure of the intention.

>=20
> must allow the sa_family/ss_family/sa_family_t member to overlay
> without triggering undefined behavior due to bad aliasing, at which
> point, access to that member lets you deduce what other object type
> you really have.  But you are also correct that merely casting a
> pointer to another larger struct that doesn't trigger aliasing, but
> then dereferencing beyond the bounds of the original, is not intended
> to be portable.  The aliasing diagnostics are suppressed because of
> the requirements on the first member, so now the user must now be
> careful that their access of remaining members is safe even if the
> compiler is no longer helping them because of the magic that
> suppressed the aliasing detection.

Yep, I was worried about completely disabling aliasing rules for
this reason: we're effectively telling compilers and static analyzers
that this is not the droid they're looking for.  Hopefully, checking
the first field is so simple that no program should forget to do it.

If there's fear that this is a problem, we could maybe allow a smaller
set of conversions.

>=20
> I agree with your warning that code that can handle generic socket
> types should use sockaddr_storage (and not sockaddr) as the original
> object (the one object that the standard requires to be suitably sized
> and aligned to overlay with the entirety of all other sockaddr types,
> rather than just the sa_family_t first member), although we may want
> to be more precise that code using a specific protocol type can
> directly use the proper sockaddr_XX type rather than having to use an
> intermediate sockaddr_storage.

It seems reasonable, since it might be an unacceptable overhead if you
declare many such objects, and want your program to stay low on memory.
Using the smallest structure possible may be important to some programs.

>=20
> I'm not sure if there are better ways to word that paragraph to convey
> the intended sentiment.
>=20
>> +.PP
>> +New functions should be written to accept pointers to
>> +.I sockaddr_storage
>> +instead of the traditional
>> +.IR sockaddr .
>=20
> I'm less certain about this one.  The POSIX wording specifically chose
> to keep existing API/ABI of sockaddr* in all the standardized
> functions unchanged, as it would be too invasive to existing code to
> change the signatures now.  The burden is on the system headers to
> define types so that the necessary casts (present in lots of existing
> code because sockaddr* has a bit more type-safety than void*) do not
> of themselves cause aliasing issues, and therefore avoid undefined
> behavior provided subsequent code accessing through the pointers is
> not accessing beyond the bounds of the real object.  The likelihood of
> POSIX adding new socket APIs taking sockaddr_storage* just to enforce
> non-aliasing seems slim.  But then again, this advice applies to more
> than just functions likely to be standardized in a future libc, so
> maybe this paragraph is worth it after all.

Depending on your answers to my answers above, I think I agree with you
on this.

Cheers,
Alex

>=20
>>  .SH SEE ALSO
>>  .BR accept (2),
>>  .BR bind (2),
>> --=20
>> 2.39.2
>>
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Ga2X8DYufhlgttNZjKruxy7w--

--------------9bBrGU68Wa3xmGgcBc0hQQvk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQsw9wACgkQnowa+77/
2zLJxg//d72k8G/HGpMIZEzjWF0uvHomwsWQ0IkElRgYTdmjATZj37kIFdKwH9d9
2fayJJQWjDGy3L8GJKlMynwaV9Ig3f7JUb7SsBT4c9lsK+oJZiHy1S0jRZMXILAE
6xqhAPuuT43yMR14m5e0UjhAlSWUgb1rlRtiZ5Uhn54n/APHcJq7gxXsOn69wzm1
RTEFidQ3xwXFbvH7Jdg/o0eCccqf/p4TWdY2PZoABCmKdBsKfcjxmBK+2ZLpukBJ
jxvlbXJSv8HlL5JXhX26bfqY6KvLHCodsvxOKy9CQIL1n1TCY32IOlZ0bjpSh6Ps
X5ua+zJf+pnXuNr5DbmZBcrw85GITSHfDq2wMud0Qwh/WmOI99IUnJ5BV4lj4+aL
azeatMgLdnddud/WWjQzH4MfxL/+GCBndQUC8Z7/6erPkOA4fuM77Du2e0dv2hjK
dpEvb923QaNAxn2tWwz9B0ed2gUwQXqgzgN4kN40BwrtzI3723XFWEpIcpwSgs/E
TkR4GI463W+23zC5ex5aT7w1lmXfA9DQz3zaTgtzbCnGLvqoRLMyjvTyi8/evjoh
V6rAj0m9TfajkszgHw652h9ewISZVU6ZnyR2E+EY6LB3atxteuh40nC5Kw1dUM8O
fjz1kgVTJnIRBjesoGxfqgdfJwLEn0+fzvjH6CCBL4bBCZyW9N4=
=QL0J
-----END PGP SIGNATURE-----

--------------9bBrGU68Wa3xmGgcBc0hQQvk--
