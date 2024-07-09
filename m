Return-Path: <linux-man+bounces-1434-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3FF92C64E
	for <lists+linux-man@lfdr.de>; Wed, 10 Jul 2024 00:43:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1511A1F23744
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 22:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EB7D155A5C;
	Tue,  9 Jul 2024 22:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rvz6ApD7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE9515575E
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 22:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720564977; cv=none; b=ALMqQ7ntBToEDEh6PRzefZcpQ16IjS2y7LoFpxT4zU1UGaHzdGDB4cyGl6jg0wZTA6NJa4+0CRCu4OAFkOPMoRfysDJ6YXMZwWB1PQDWytAgn/Q+mVRBb4PF0lXo1EiafTmQPkXZ1oThAn3n+5UelUuBqVcndC0dC+LfM8Dxn3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720564977; c=relaxed/simple;
	bh=ggxKAZjil4KREV7JepPAoeUW+8Xy5EJIRFj8dUMkqQk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uxLuOFbfj4abLOCJl2QHP+RUSPGLguxWl7ot1RGOJEaqkYVejVJXW1cMGPl9UbLTivNQG4p+JciE9Q8iFFgIURtFkjH1eOez2SkSKOOO2HENfWXarOF97xLIOt+7xsdtDqxXLR+H8Rh1qzzqk3Mecc/xPgso62KYs+CBCg287Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rvz6ApD7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5385C3277B;
	Tue,  9 Jul 2024 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720564976;
	bh=ggxKAZjil4KREV7JepPAoeUW+8Xy5EJIRFj8dUMkqQk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rvz6ApD7sx0ZpBroYHDoucVuvqB0YU16qwbW0H1CWFH74dxNgxOxgOKh2+uKeMSWY
	 o/JOdN6FsIgCt/OFj+/JQZL7MwkBk7PGvPtOCu5MIqnk7gN4snmTafix3enBms/7nL
	 ozDrDwNO9M87c+vti0rIEDngYX5ZC++HGKAMN6gzzhpwSu5zxjPJ4cQpOth7wVD1Ei
	 RCyHbPczzl6pOE4dIPZQwcj4YwmRQjplvlj+QwObCuz8/8vHShBV8CdjfF+hMXEYCW
	 jd+LJnLbYMhH1PU6wn7UCR6J3VhRqhpF4hCqIorCTKYFZ57RqfpyvJwRpFcuOXrjiE
	 NTGIJn9iIHx9Q==
Date: Wed, 10 Jul 2024 00:42:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org, uecker@tugraz.at
Cc: gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, uecker@tugraz.at, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
Message-ID: <2zazxwbvnjd5vqqqz66fpqdpzqnwjujwxeltz5rhu7camgsdmg@vvbalwgwmek3>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vrvidnkls7l6jzip"
Content-Disposition: inline
In-Reply-To: <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>


--vrvidnkls7l6jzip
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="ngfcrephrk27w457"
Content-Disposition: inline
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org, uecker@tugraz.at
Cc: gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, uecker@tugraz.at, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, dmalcolm@redhat.com
Subject: n3294 - The restrict function attribute as a replacement of the
 restrict qualifier
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
MIME-Version: 1.0
In-Reply-To: <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>


--ngfcrephrk27w457
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Here's a proposal for adding a function attribute for replacing
the restrict restrict qualifier.  It's v0.3 of n3294 (now we have a
document number).

I was going to name it [[noalias()]], but I thought that it would be
possible to mark several pointers as possibly referencing the same
object, and then the name [[restrict()]] made more sense.

It's based on a proposal I sent to Martin recently in this discussion.

Do you have any feedback for this?

I've attached the man(7) source and the resulting PDF, and below goes
a plain text rendering (formatting is lost).


Have a lovely night!
Alex

---

N3294 (WG14)                Proposal for C2y               N3294 (WG14)

Name
     n3294  - The [[restrict()]] function attribute as a replacement of
     the restrict qualifier

Category
     Feature and deprecation.

Author
     Alejandro  Colomar  Andres;  maintainer  of  the  Linux  man-pages
     project.

   Cc
     GNU C library
     GNU Compiler Collection
     Linux man=E2=80=90pages
     Paul Eggert
     Xi Ruoyao
     Jakub Jelinek
     Martin Uecker
     LIU Hao
     Jonathan Wakely
     Richard Earnshaw
     Sam James
     Emanuele Torre
     Ben Boeckel
     "Eissfeldt, Heiko"
     David Malcolm

Description
   restrict qualifier
     The  restrict  qualifier is not useful for diagnostics.  Being de=E2=
=80=90
     fined in terms of accesses, the API is not enough for a caller  to
     know what the function will do with the objects it receives.

     That is, a caller cannot know if the following call is correct:

            void f(const int *restrict a, int **restrict b);

            f(a, &a);

     Having  no way to determine if a call will result in Undefined Be=E2=
=80=90
     havior makes it a dangerous qualifier.

     The reader might notice that this prototype and call is very simi=E2=
=80=90
     lar to the prototype of strtol(3), and the use reminds of a  rela=E2=
=80=90
     tively common use of that function.

   Diagnostics
     A good replacement of the restrict qualifier should allow to spec=E2=
=80=90
     ify  in  the  API of the following function that it doesn=E2=80=99t ac=
cept
     pointers that alias.

            void
            replace(const T *restrict new, T **restrict ls, size_t pos)
            {
                 memcpy(ls[pos], new, sizeof(T));
            }

     This proposal suggests the following:

            [[restrict(1)]] [[restrict(2)]]
            void
            replace(const T *restrict new, T **restrict ls, size_t pos);

            replace(arr[3], arr, 2);  // UB; can be diagnosed

   Qualifiers
     It is also unfortunate that restrict  is  a  qualifier,  since  it
     doesn=E2=80=99t  follow  the  rules  that  apply  to all other qualifi=
ers.
     While it is discarded easily, its  semantics  make  it  as  if  it
     couldn=E2=80=99t be discarded.

   Function attribute
     The purpose of restrict is to

     =E2=80=A2  Allow functions to optimize based on the knowledge that cer=
tain
        objects are not accessed by any other object in the same scope;
        usually a function boundary, which is the most opaque boundary,
        and where this information is not otherwise available.

     =E2=80=A2  Diagnose  calls  that  would result in Undefined Behavior u=
nder
        this memory model.

     Qualifiers don=E2=80=99t seem to be good for  carrying  this  informat=
ion,
     but  function attributes are precisely for adding information that
     cannot be expressed by just using the type system.

     An attribute would need to be more strict than the restrict quali=E2=
=80=90
     fier to allow diagnosing non=E2=80=90trivial cases, such as the call s=
hown
     above.

     A caller only knows what the callee receives,  not  what  it  does
     with  it.  Thus, for diagnostics to work, the semantics of a func=E2=
=80=90
     tion attribute should be specified in terms of what a function  is
     allowed to receive.

   [[restrict]]
     The  [[restrict]] function attribute specifies that the pointer to
     which it applies is the only reference  to  the  array  object  to
     which  it  points (except that a pointer to one past the last ele=E2=
=80=90
     ment may overlap another object).

     If the number of elements is specified with array  notation  or  a
     compiler=E2=80=90specific  attribute, the array object to be considere=
d is
     a subobject of the original array object, which is limited by  the
     number of elementsspecified in the function prototype.

     For the following prototype:

            [[restrict(1)]] [[restrict(2)]]
            void add_inplace(size_t n, int a[n], const int b[n]);

     In  the following calls, the caller is able to determine with cer=E2=
=80=90
     tainty if the behavior is defined or undefined:

            char  a[100] =3D ...;
            char  b[50] =3D ...;

            add_inplace(50, a, a + 50);  // Ok
            add_inplace(50, a, b);       // Ok
            add_inplace(50, a, a);       // UB

     In the first of the three calls, the parameters don=E2=80=99t alias in=
side
     the function, since the subobjects of 50 elements do  not  overlap
     each  other,  even  though they are one single array object to the
     outer function.

   Optimizations
     This function attribute allows similar  optimizations  than  those
     allowed by the restrict qualifier.

     strtol(3)
            In  some  cases, such as the strtol(3) function, the proto=E2=
=80=90
            type will be different, since this  attribute  is  stricter
            than restrict, and can=E2=80=99t be applied to the same paramet=
ers.
            For example, the prototype for strtol(3) would be

                   [[restrict(2)]]
                   long
                   strtol(const char *str, char **endp, int base);

            This  could  affect optimizations, since now it=E2=80=99s not c=
lear
            to the implementation that str is not modified by any other
            reference.   Compiler=E2=80=90specific  attributes  can  help  =
with
            that.   For example, the [[gnu::access()]] attribute can be
            used in this function to give more information:

                   [[restrict(2)]]
                   [[gnu::access(read_only, 1)]]
                   [[gnu::access(write_only, 2)]]
                   long
                   strtol(const char *str, char **endp, int base);

            The fact that endp is write=E2=80=90only  lets  the  callee  de=
duce
            that *endp cannot be used to write to the string (since the
            callee is not allowed to inspect *endp).

            Another  concern  is  that  a global variable such as errno
            might alias the string.  This is already a concern in  sev=E2=
=80=90
            eral  ISO  C  calls, such as rename(2).  But in the case of
            strtol(3), it would be a regression.   There  are  ways  to
            overcome  that, such as designing helper functions in a way
            that the attribute can be applied to add extra information.

            It is important that diagnostics are easy to determine,  to
            avoid  false negatives and false positives, so that code is
            easily safe.  Optimizations, while important, need  not  be
            as  easy  to  apply  as  diagnostics.  If an implementation
            wants to be optimal, it will do the extra  work  for  being
            fast.

     Multiple aliasing pointers
            In  some cases, it might be useful to allow specifying that
            some pointers may alias each other, but not others.

     Strings
            Another way to determine that str cannot be aliased by  any
            other  object  such  as  errno would be to use an attribute
            that marks  str  as  a  string.   An  object  of  type  int
            shouldn=E2=80=99t  be  allowed to represent a string, so regard=
less
            of character types being allowed to alias any  other  type,
            an  attribute such as [[gnu::null_terminated_string_arg()]]
            might be used to determine that the global errno  does  not
            alias the string.

   Deprecation
     The restrict qualifier would be deprecated by this attribute, sim=E2=
=80=90
     ilar  to how the noreturn function specifier was superseded by the
     [[noreturn]] function attribute.

   Backwards compatibility
     Removing the restrict qualifier from function prototypes does  not
     cause  problems  in  most functions.  Only functions with restrict
     applied to a pointee would  have  incompatible  definitions.   The
     only standard functions where this would happen are:

     tmpfile_s()
     fopen_s()
     freopen_s()

     Those  functions  are  not  widely  adopted,  so the problem would
     likely be minimal.

Proposal
   6.7.13.x The restrict function attribute
     Constraints
            The restrict attribute shall be applied to a function.

            A 1=E2=80=90based index can be specified in an  attribute  argu=
ment
            clause,  to  associate the attribute with the corresponding
            parameter of the function, which must be of a pointer type.

            (Optional.)  Several indices can be specified, separated by
            commas.

            The attribute can be applied  several  times  to  the  same
            function, to mark several parameters with the attribute.

            (Optional.)   The argument attribute clause may be omitted,
            which is equivalent to specifying the  attribute  once  for
            each parameter that is a pointer.

     Semantics
            If  a  function is defined with the restrict attribute, the
            corresponding parameter shall be the only reference to  the
            array  object  that it points to.  If the function receives
            another reference to the same array object, the behavior is
            undefined.  If  the  function  accesses  the  array  object
            through  an  lvalue  that is not derived from that pointer,
            the behavior is undefined.

            (Optional.)  If more than one parameters are  specified  in
            the  same  attribute  argument  clause,  then  all of those
            pointers are allowed to point to the same array object.

            If the number of elements is specified with array  notation
            (or  a compiler=E2=80=90specific attribute), the array object t=
o be
            considered for aliasing is a sub=E2=80=90object of the original=
 ar=E2=80=90
            ray object, limited by the number  of  elements  specifiedr
            [1].

     [1]  For the following prototype:

                 [[restrict(1)]] [[restrict(2)]]
                 void f(size_t n, int a[n], const int b[n]);

          In  the  the following calls, the caller is able to determine
          if the behavior is defined or undefined:

                 char a[100] =3D /*...*/;
                 char b[50] =3D /*...*/;

                 f(50, a, a + 50);  // Ok
                 f(50, a, b);       // UB; a diagnostic is recommended
                 f(50, a, a + 2);   // UB; a diagnostic is recommended

History
     Revisions of this paper:

     0.1    Original draft for removing restrict from the first parame=E2=
=80=90
            ter of strtol(3).

     0.2    Incorporate feedback from glibc and gcc mailing lists.

     0.3    Re=E2=80=90purpose,  to  deprecate  restrict  and   propose   [=
[re=E2=80=90
            strict()]] instead.

See also
     The original discussion about restrict and strtol(3).

ISO/IEC 9899                   2024=E2=80=9007=E2=80=9009                  =
N3294 (WG14)


--=20
<https://www.alejandro-colomar.es/>

--ngfcrephrk27w457
Content-Type: application/x-troff-man
Content-Disposition: attachment; filename="restrict.man"
Content-Transfer-Encoding: quoted-printable

=2E=0A.=0A.TH N3294\~ WG14 2024-07-09 ISO/IEC\~9899 "Proposal for C2y"=0A.=
=0A.=0A.SH Name=0A.=0An3294=0A\-=0AThe=0A.I [[restrict()]]=0Afunction attri=
bute as a replacement of the=0A.I restrict=0Aqualifier=0A.=0A.=0A.SH Catego=
ry=0A.=0AFeature and deprecation.=0A.=0A.=0A.SH Author=0A.=0A.MT alx@kernel=
=2Eorg=0AAlejandro Colomar Andres=0A.ME ;=0Amaintainer of the=0A.UR https:/=
/www.kernel.org/\:doc/\:man\-pages/=0ALinux man\-pages project=0A.UE .=0A.=
=0A.SS Cc=0A.=0A.MT libc\-alpha@sourceware.org=0AGNU C library=0A.ME=0A.br=
=0A.MT gcc@gcc.gnu.org=0AGNU Compiler Collection=0A.ME=0A.br=0A.MT linux\-m=
an@vger.kernel.org=0ALinux man-pages=0A.ME=0A.br=0A.MT eggert@cs.ucla.edu=
=0APaul Eggert=0A.ME=0A.br=0A.MT xry111@xry111.site=0AXi Ruoyao=0A.ME=0A.br=
=0A.MT jakub@redhat.com=0AJakub Jelinek=0A.ME=0A.br=0A.MT uecker@tugraz.at=
=0AMartin Uecker=0A.ME=0A.br=0A.MT lh_mouse@126.com=0ALIU Hao=0A.ME=0A.br=
=0A.MT jwakely.gcc@gmail.com=0AJonathan Wakely=0A.ME=0A.br=0A.MT Richard.Ea=
rnshaw@arm.com=0ARichard Earnshaw=0A.ME=0A.br=0A.MT sam@gentoo.org=0ASam Ja=
mes=0A.ME=0A.br=0A.MT torreemanuele6@gmail.com=0AEmanuele Torre=0A.ME=0A.br=
=0A.MT ben.boeckel@kitware.com=0ABen Boeckel=0A.ME=0A.br=0A.MT heiko.eissfe=
ldt@siemens.com=0A"Eissfeldt, Heiko"=0A.ME=0A.br=0A.MT dmalcolm@redhat.com=
=0ADavid Malcolm=0A.ME=0A.=0A.=0A.SH Description=0A.=0A.SS restrict qualifi=
er=0A.=0AThe=0A.I \%restrict=0Aqualifier is not useful for diagnostics.=0AB=
eing defined in terms of accesses,=0Athe API is not enough for a caller=0At=
o know what the function will do with the objects it receives.=0A.P=0AThat =
is, a caller cannot know if the following call is correct:=0A.IP=0A.EX=0Avo=
id f(const int *restrict a, int **restrict b);=0A\&=0Af(a, &a);=0A.EE=0A.P=
=0AHaving no way to determine if a call will result in Undefined Behavior=
=0Amakes it a dangerous qualifier.=0A.P=0AThe reader might notice that this=
 prototype and call is=0Avery similar to the prototype of=0A.MR strtol 3 ,=
=0Aand the use reminds of a relatively common use of that function.=0A.=0A.=
SS Diagnostics=0A.=0AA good replacement of the=0A.I restrict=0Aqualifier sh=
ould allow to specify in the API of the following function=0Athat it doesn'=
t accept pointers that alias.=0A.IP=0A.EX=0Avoid=0Areplace(const T *restric=
t new, T **restrict ls, size_t pos)=0A{=0A	memcpy(ls[pos], new, sizeof(T));=
=0A}=0A.EE=0A.P=0AThis proposal suggests the following:=0A.IP=0A.EX=0A[[res=
trict(1)]] [[restrict(2)]]=0Avoid=0Areplace(const T *restrict new, T **rest=
rict ls, size_t pos);=0A\&=0Areplace(arr[3], arr, 2);  // UB; can be diagno=
sed=0A.EE=0A.=0A.SS Qualifiers=0A.=0AIt is also unfortunate that =0A.I rest=
rict=0Ais a qualifier,=0Asince it doesn't follow the rules that apply to al=
l other qualifiers.=0AWhile it is discarded easily,=0Aits semantics make it=
 as if it couldn't be discarded.=0A.=0A.SS Function attribute=0A.=0AThe pur=
pose of restrict is to=0A.IP \[bu] 3=0AAllow functions to optimize based on=
 the knowledge that=0Acertain objects are not accessed by any other object =
in the same scope;=0Ausually a function boundary,=0Awhich is the most opaqu=
e boundary,=0Aand where this information is not otherwise available.=0A.IP =
\[bu]=0ADiagnose calls that would result in Undefined Behavior=0Aunder this=
 memory model.=0A.P=0AQualifiers don't seem to be good for carrying this in=
formation,=0Abut function attributes are precisely for adding information=
=0Athat cannot be expressed by just using the type system.=0A.P=0AAn attrib=
ute would need to be more strict than the=0A.I \%restrict=0Aqualifier=0Ato =
allow diagnosing non-trivial cases,=0Asuch as the call shown above.=0A.P=0A=
A caller only knows what the callee receives,=0Anot what it does with it.=
=0AThus, for diagnostics to work,=0Athe semantics of a function attribute s=
hould be=0Aspecified in terms of what a function is allowed to receive.=0A.=
=0A.SS [[restrict]]=0A.=0AThe=0A.I \%[[restrict]]=0Afunction attribute spec=
ifies that=0Athe pointer to which it applies=0Ais the only reference=0Ato t=
he array object to which it points=0A(except that a pointer to one past the=
 last element=0Amay overlap another object).=0A.P=0AIf the number of elemen=
ts is specified with array notation=0Aor a compiler-specific attribute,=0At=
he array object to be considered is=0Aa subobject of the original array obj=
ect,=0Awhich is limited by=0Athe number of elementsspecified in the functio=
n prototype.=0A.P=0AFor the following prototype:=0A.IP=0A.EX=0A[[restrict(1=
)]] [[restrict(2)]]=0Avoid add_inplace(size_t n, int a[n], const int b[n]);=
=0A.EE=0A.P=0AIn the following calls,=0Athe caller is able to determine wit=
h certainty=0Aif the behavior is defined or undefined:=0A.IP=0A.EX=0Achar  =
a[100] =3D ...;=0Achar  b[50] =3D ...;=0A\&=0Aadd_inplace(50, a, a + 50);  =
// Ok=0Aadd_inplace(50, a, b);       // Ok=0Aadd_inplace(50, a, a);       /=
/ UB=0A.EE=0A.P=0AIn the first of the three calls,=0Athe parameters don't a=
lias inside the function,=0Asince the subobjects of 50 elements do not over=
lap each other,=0Aeven though they are one single array object to the outer=
 function.=0A.=0A.SS Optimizations=0A.=0AThis function attribute allows sim=
ilar optimizations=0Athan those allowed by the=0A.I \%restrict=0Aqualifier.=
=0A.TP=0A.MR strtol 3=0A.RS=0AIn some cases,=0Asuch as the=0A.MR strtol 3=
=0Afunction,=0Athe prototype will be different,=0Asince this attribute is s=
tricter than=0A.IR \%restrict ,=0Aand can't be applied to the same paramete=
rs.=0AFor example,=0Athe prototype for=0A.MR strtol 3=0Awould be=0A.IP=0A.E=
X=0A[[restrict(2)]]=0Along=0Astrtol(const char *str, char **endp, int base)=
;=0A.EE=0A.P=0AThis could affect optimizations,=0Asince now it's not clear =
to the implementation=0Athat=0A.I str=0Ais not modified by any other refere=
nce.=0ACompiler-specific attributes can help with that.=0AFor example,=0Ath=
e=0A.I \%[[gnu::access()]]=0Aattribute can be used in this function to give=
 more information:=0A.IP=0A.EX=0A[[restrict(2)]]=0A[[gnu::access(read_only,=
 1)]]=0A[[gnu::access(write_only, 2)]]=0Along=0Astrtol(const char *str, cha=
r **endp, int base);=0A.EE=0A.P=0AThe fact that=0A.I endp=0Ais write-only=
=0Alets the callee deduce that=0A.I *endp=0Acannot be used to write to the =
string=0A(since the callee is not allowed to inspect=0A.IR *endp ).=0A.P=0A=
Another concern is that a global variable such as=0A.I \%errno=0Amight alia=
s the string.=0AThis is already a concern in several ISO C calls,=0Asuch as=
=0A.MR rename 2 .=0ABut in the case of=0A.MR strtol 3 ,=0Ait would be a reg=
ression.=0AThere are ways to overcome that,=0Asuch as designing helper func=
tions=0Ain a way that the attribute can be applied to add extra information=
=2E=0A.P=0AIt is important that diagnostics are easy to determine,=0Ato avo=
id false negatives and false positives,=0Aso that code is easily safe.=0AOp=
timizations,=0Awhile important,=0Aneed not be as easy to apply as diagnosti=
cs.=0AIf an implementation wants to be optimal,=0Ait will do the extra work=
 for being fast.=0A.RE=0A.TP=0AMultiple aliasing pointers=0AIn some cases,=
=0Ait might be useful to allow specifying that=0Asome pointers may alias ea=
ch other,=0Abut not others.=0A.TP=0AStrings=0A.RS=0AAnother way to determin=
e that=0A.I str=0Acannot be aliased by any other object such as=0A.I \%errn=
o=0Awould be to use an attribute that marks=0A.I str=0Aas a string.=0AAn ob=
ject of type=0A.I int=0Ashouldn't be allowed to represent a string,=0Aso re=
gardless of character types being allowed to alias any other type,=0Aan att=
ribute such as=0A.I \%[[gnu::null_terminated_string_arg()]]=0Amight be used=
 to determine that the global=0A.I \%errno=0Adoes not alias the string.=0A.=
RE=0A.=0A.SS Deprecation=0A.=0AThe=0A.I \%restrict=0Aqualifier=0Awould be d=
eprecated by this attribute,=0Asimilar to how the=0A.I \%noreturn=0Afunctio=
n specifier was=0Asuperseded by the=0A.I \%[[noreturn]]=0Afunction attribut=
e.=0A.=0A.SS Backwards compatibility=0A.=0ARemoving the=0A.I \%restrict=0Aq=
ualifier from function prototypes=0Adoes not cause problems in most functio=
ns.=0AOnly functions with=0A.I \%restrict=0Aapplied to a pointee=0Awould ha=
ve incompatible definitions.=0AThe only standard functions where this would=
 happen are:=0A.TP=0A.MR tmpfile_s ""=0A.TQ=0A.MR fopen_s ""=0A.TQ=0A.MR fr=
eopen_s ""=0A.P=0AThose functions are not widely adopted,=0Aso the problem =
would likely be minimal.=0A.=0A.=0A.SH Proposal=0A.=0A.SS 6.7.13.x  The res=
trict function attribute=0A.TP=0AConstraints=0AThe=0A.I restrict=0Aattribut=
e shall be applied to a function.=0A.IP=0AA 1-based index can be specified =
in an attribute argument clause,=0Ato associate the attribute with=0Athe co=
rresponding parameter of the function,=0Awhich must be of a pointer type.=
=0A.IP=0A(Optional.)=0ASeveral indices can be specified,=0Aseparated by com=
mas.=0A.IP=0AThe attribute can be applied several times to the same functio=
n,=0Ato mark several parameters with the attribute.=0A.IP=0A(Optional.)=0AT=
he argument attribute clause may be omitted,=0Awhich is equivalent to=0Aspe=
cifying the attribute once for each parameter that is a pointer.=0A.TP=0ASe=
mantics=0AIf a function is defined with the=0A.I restrict=0Aattribute,=0Ath=
e corresponding parameter shall be the only reference to=0Athe array object=
 that it points to.=0AIf the function receives another reference to the sam=
e array object,=0Athe behavior is undefined.=0AIf the function accesses the=
 array object through an lvalue that is=0Anot derived from that pointer,=0A=
the behavior is undefined.=0A.IP=0A(Optional.)=0AIf more than one parameter=
s are specified=0Ain the same attribute argument clause,=0Athen all of thos=
e pointers are allowed to point to the same array object.=0A.IP=0AIf the nu=
mber of elements is specified with array notation=0A(or a compiler-specific=
 attribute),=0Athe array object to be considered for aliasing is=0Aa sub-ob=
ject of the original array object,=0Alimited by the number of elements spec=
ifiedr [1].=0A.IP [1] 5=0AFor the following prototype:=0A.RS=0A.IP=0A.EX=0A=
[[restrict(1)]] [[restrict(2)]]=0Avoid f(size_t n, int a[n], const int b[n]=
);=0A.EE=0A.P=0AIn the the following calls,=0Athe caller is able to determi=
ne if the behavior is defined or undefined:=0A.IP=0A.EX=0Achar a[100] =3D /=
*...*/;=0Achar b[50] =3D /*...*/;=0A\&=0Af(50, a, a + 50);  // Ok=0Af(50, a=
, b);       // UB; a diagnostic is recommended=0Af(50, a, a + 2);   // UB; =
a diagnostic is recommended=0A.EE=0A.RE=0A.=0A.=0A.SH History=0A.=0ARevisio=
ns of this paper:=0A.TP=0A0.1=0AOriginal draft for removing=0A.I restrict=
=0Afrom the first parameter of=0A.MR strtol 3 .=0A.TP=0A0.2=0AIncorporate f=
eedback from glibc and gcc mailing lists.=0A.TP=0A0.3=0ARe-purpose, to depr=
ecate=0A.I restrict=0Aand propose=0A.I [[restrict()]]=0Ainstead.=0A.=0A.=0A=
=2ESH See also=0A.=0A.UR https://inbox.sourceware.org/\:libc-alpha/\:ajmcod=
haxi33wxmyvomkd3osq42m3pd5c63uccfinissjputqw@scu47raz2oop/\:T/#t=0AThe orig=
inal discussion=0A.UE=0Aabout=0A.I \%restrict=0Aand=0A.MR strtol 3 .=0A
--ngfcrephrk27w457
Content-Type: application/pdf
Content-Disposition: attachment; filename="restrict.pdf"
Content-Transfer-Encoding: base64

JVBERi0xLjcKJeLjz9MKMyAwIG9iaiA8PCAvQW5ub3RzIFs3IDAgUiAgOCAwIFIgIDkgMCBS
ICAxMCAwIFIgIDExIDAgUiAgMTIgMCBSICAxMyAwIFIgIDE0IDAgUiAgMTUgMCBSICAxNiAw
IFIgIDE3IDAgUiAgMTggMCBSICAxOSAwIFIgIDIwIDAgUiAgMjEgMCBSICAyMiAwIFIgIDIz
IDAgUiAgMjQgMCBSICBdCi9Db250ZW50cyBbNCAwIFIgIF0KL0dyb3VwIDw8IC9DUyAvRGV2
aWNlUkdCCi9TIC9UcmFuc3BhcmVuY3kKPj4KL1BhcmVudCAyIDAgUgovVHlwZSAvUGFnZQo+
PgplbmRvYmoKNCAwIG9iaiA8PCAvRmlsdGVyIC9GbGF0ZURlY29kZQovTGVuZ3RoIDIxODEK
Pj4Kc3RyZWFtCnicpVptb9s4Ev6eP7GD/XBnHyJV7y/XT0mabRvc7nZ3HewBSXFgZNpWK4uu
JDeXOyywP/2GFGlLFGWrOBSJw/GjmdFw3jjsF3DBwX/t72x74cId/ny6cOwAni++wPXi4oCw
HceBOPXE52J7gb+yi9izY4cDFssDUtLiIO1BHVhf3C7gF/zjrVj02I889OoHPwEX/1xdtAos
nuEBZj/5XhrMP8LiDhGhAQCPs9/fusHjfA6W60dRYIf43exDxXasJgWsWAU33otiYRKCz8W+
fO4b5AmQ5RjNIizoJn2ziNUUJKoZoWg7DZV0V5mDbCm0kn3Hdh2vzw8JgqgztMIhNo1b2U6k
yTa9dcnNAt+hjb2wpc8WG2owqpceDPXwUM3Bb6XMaN1UedY8zh7nHz8O7Rv4h8dW+zJrclZ2
ZZEGn36agyfX+4b2vq57q+6ioruCZHRLy6ZLZqvuqjG+SmfPhy8yfIUoOcC/7EmR/0kr6SJe
OLrzUZLa3iQf0ZHjPnJDGrpm1Yv0kyC0UzfQ/MSNBVFnaqGBB2DpKFEcawqYHOUHSpp9RYGU
S1jSXUUzwjfTnmCKCN1gmik05KgpYHY1B77Jfsx9ZoOpQMZOZHthqMdOIog6d8t1h2BlkyA5
p/NppO2H/HeEf1frEZNeFfQTmrNicMMKtiUVXOGK1u2rcLWTWBPqOaEgDqRiMu6yfg1bkpcN
/tAK2AowEKSF4ggzhs41ce3UxNX0Ll0x/8jL/b9RVPndjqxpDbuKfaIqhnjO4lmjJ8pPAtuL
zr/Awa/QzBzfY5JI0/uuUOrEJo0gpWPpG3KTSSO5ge3qQl3HFUSdl2XAKt9w03MKnkZO8aK3
P93DDRT5U0UqWQ3D1E51w7thJIi6JMsEVlo58VT9jciOgmy7ywv0RfT0grZlQDoJ+qM78HJf
EHWulhEtVQjTcKKyZqTm0Zbw6FbJKLVjXaobRYKoM7NMYCU48aeqaETK3PdhjrspS+K+gNv1
mlYy5gJUarDzgS+IOk/LBFby47OhdRLZGvOfOfy6Z3OewoW2L4RJNX07HBg0cARRZ2iZwEp4
ODXAzMhWzTvyef8Ed7TAbPlZRpApAYRtAtBZWSawEhtMjSAzslXwR1I1eQn3NPt8NKbqQkJM
pMNgDwVRZ2qZwEoBf3L8GJEyft7fwzu1zYhLPF013xNEnYllAiuB3uS4MSLlNrOSNBtSwu9z
SFRL2TVoIdNnxPuFQbiHgqgLsExgpYw7OYiMyFbtX/NsQ6ol3JKqrDfkGPvPsqD7dhDo2saO
IOp8LRNY6hCkU2PJjGy1/Y1s4Q7PMjJzBoEdDzwgcAVRZ2OZwEpkMjWOzMhWuVvM63taUFgc
PYBVlTwjRL6d6kwxrgVR52qZwEqDeGogmZGtrte0hGvWj/hCRjz2rcnAqIkg6iwtE1iJj6aG
lRnZKvr9bV7XK1osm0t4R/OOvux76aGeOIJrhk0FUedsmcBKi3BqPJmRrb5vyPG4+TVfwo+k
yFixlT6AyWkQ+pjvOVFnaqFPDMDyJBP4gZ2cVnUMCesTR8A3tM6qfMf7J9mqYluXxPqJx0sE
UedtYeQNwLJFDjzvnMYjSHMzjSd09ISkd7Y+nJ/h4BiOb7A2J+pSrMgAVtuNtuprZGqUzXON
0ImnDwOwAUjiwTAALN9pp0WzvO6uStZ0l/uarvZFl7JivaeXOVmXrG7yrLaBj72S1kcwGeTl
uoekf5Z02ZNcdlcNrbY9VcRchK+4B89IltG6pvVll8iHJZ3l1Yf33eXhzaL+m4klLdl+vWmt
NR6VfpoYXKy1Jp/mEchIwQ8JDYPPJfaNnqp08LwhjTjEqiESPOdFAUuGn81GfMOe+NGzhryB
imY0Pz7+9VgzaW2f1TLpz0f7LoRq5PXlUdWMlGgLXd28PXGv8LDTpeMmiueQBWS88GTN3w9z
i4E+ru+3CvHWo+fdprPrV4a5bPU4y1hZo45lA3+rVNiRy5ZwpDw9zl+PGuIgOPTPzbAOUMws
Q6jc2scZKvAXchBpmd5WWd8LtBGQKZTf9XI4WrVERzgWHvLCXWhJeRRgT8+3o92w1mvQCvuC
2wjuyzaQ4JpueizRG7e93lD4FYElKfGwxfZ1J/pDub3nPWtwSHad4JicUC+yRJfa5utNg2+E
aYCiGwnHz8VspWHNy64dwSk36vp29QJ1vs0LIiKIO+DxGbZSE7IgtP1ImwQGgSeIQw2NYwjj
rB1rjVADPaxhxYlJO29JBPJx5qtpO7pRpCd33sqkqUEpMSo6mu5SGIS/LiZYNKKlvCxOxPOm
rfBOjADQZZY1NxhBZgVpRjJJ8YIxvN1iKuJixYwNt0rlJzW/csfrqBeb0uEU5Mj46s2xfMCh
U/QHZ0M/EUSdKW8OBmBlrigaL7CpqohXsGZsCZ3JvBw9mmbw6TeUXaxhsansetgriOpWb9i+
WHYppJ95u181rPfojmb56qVLyssefEO7y7YsHpbyvsGMNeR/+bWomr0LkVQVYdJ013lzLqt4
oanVbI21ZLQu/3rswzCFYeXfNbBjWBBoVbdOiwYlqjCeqkSer19njVWis7XF8/q3U10G0oFU
LVt0KllJny854UgpsBrX+X/ov/hL1SqfnJLsBqOS/3vCBlF7rek54+3Blm6z3cvjrKgfUJeP
l626XDuGRXDxOD9dApWGbuqMivjjfAl1Y3/Cfc5C1pT2MrXer9do0XqsbZnQpvABc79ym5zj
4aE63Bi6/MoQuhTveIl4YgfdIDBcU3yD8/EZ1BiD/8v5zvdUrnf2MuwAdUy3MZqWpKoefPQ0
/LwENN9rgFev4P76Ne9M4YmCPFNQaRUrckePov6UC+P3v/386v3tDaRJmvIjSui7MnljZASW
E1sOp3tOGEm6Kyf9UlgYqK6iK0z8t4JfLv4HVTtfpWVuZHN0cmVhbQplbmRvYmoKMjUgMCBv
YmogPDwgL0Fubm90cyBbMjcgMCBSICAyOCAwIFIgIDI5IDAgUiAgXQovQ29udGVudHMgWzI2
IDAgUiAgXQovR3JvdXAgPDwgL0NTIC9EZXZpY2VSR0IKL1MgL1RyYW5zcGFyZW5jeQo+Pgov
UGFyZW50IDIgMCBSCi9UeXBlIC9QYWdlCj4+CmVuZG9iagoyNiAwIG9iaiA8PCAvRmlsdGVy
IC9GbGF0ZURlY29kZQovTGVuZ3RoIDI1NTIKPj4Kc3RyZWFtCnicxVpLk9u4Eb7rV+C20kai
+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
hnI9sPp0Fh2YNtHhDSuv27wLSgeFTFabmtf35uR34Fk38Efy+z2UE3j2g5xrYTnokgIAALDD
vg/yHiscbrsJRogbI/huT4RxGAtZ7WYn0esLAGmAyCmkEWYIr7pgPjcZdhKyXt+60bmvQQ63
9rBBDhSj2fLsuma9fDGlGMLYwrWL09TVlCdL5RLOULH0xsXUBsCSoNwvveZyCnJNOOxhbPGy
L5RredFErnKdXr1Gp4VjOaHTZY+SZTxZ8I4f8TYfqV5djdkcz9rueru70GHxl4Pd/0ztuFvf
crbu5JHdZsDZJjiRGhuYBdU/TXmbnPA7jMZnRYNSdbmQ44aR0KBlO8lzhBDjxrDNyRNv75uJ
sXR0MSTE+SA+dMq7LuU6cl7Rt03q5LPiGJsVAI4sG7mkSYdiYt3VDHPKYaJXvWfC2SUlfa0e
WTFbUJ3d2ODoJaR/UjyGOwticigUv0XXEX9/fnhQGXBji/WDTcVJI68Heucw/QyCb/YNp6dK
Kbsxx203AE+Y2kCqdr+UIF9gzB/h3Vr9+iPJk4tsBvj9zW3w35rcuzGFiVy9fIkbRoSN+OU9
pV6fmlg2BoKIVj909UPee8QpwUUTEpT7Noc83ZB6pIj5TtOh85Hw0MO27SUXUoMS+UcWS+Cn
P2Ysudm7tqpxTSTqg2EahUzcbLUzFxnVzX3ruxeNBEqeRNCZpBfZM3F1vDxLzB/P3vZngWOA
4fHxlNevX8s7vf2yiwJjuOa1gGFqkNZcU+N8+l66Ls1rdmrQ8vqgPxtjvIaG6U+niZmqcRPP
CvP+vbstudVzqnDdOb0m4v+TRqLpsUnPHgXBySc++lsjp9t6owCWsXkk66M3/TctHZf3//zw
6v3P79Buu9vxvx8KPEcVRYgBf2NHG5u/d+0gbN4rRKOYjfzxEzD7+QF9XHxc/BfVLijhZW5k
c3RyZWFtCmVuZG9iagozMCAwIG9iaiA8PCAvQW5ub3RzIFszMiAwIFIgIDMzIDAgUiAgMzQg
MCBSICAzNSAwIFIgIDM2IDAgUiAgXQovQ29udGVudHMgWzMxIDAgUiAgXQovR3JvdXAgPDwg
L0NTIC9EZXZpY2VSR0IKL1MgL1RyYW5zcGFyZW5jeQo+PgovUGFyZW50IDIgMCBSCi9UeXBl
IC9QYWdlCj4+CmVuZG9iagozMSAwIG9iaiA8PCAvRmlsdGVyIC9GbGF0ZURlY29kZQovTGVu
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
Mba/TZKgFUrNB1q+5qJOamphR6/srT+TknBH92w7Rdkd9jH7UC0MFaOUfzIkAgvpOnJB4k5A
msMgjIHFHnG1qgLjk50jUEdzeuV+WAy8OeXmiTyU8WNvMjH7Vi6J1cBCUPzId9xRq/8twc7B
Us6NsJXrPIhPAWnvEkbXng9Hls0ry8HPVPnNTQbS6RXe6CCsjC9otyC/ArHhizhHu+Z4r3kH
19J9Y7xYrQfLnzI+fXj//dOP71CWZhmbCUQBln7ke3648ZKNx9YhlsdyPZAlrjzC8aEqHPHj
M/r14deH/wI+1VtGZW5kc3RyZWFtCmVuZG9iagozNyAwIG9iaiA8PCAvQW5ub3RzIFszOSAw
IFIgIDQwIDAgUiAgNDEgMCBSICBdCi9Db250ZW50cyBbMzggMCBSICBdCi9Hcm91cCA8PCAv
Q1MgL0RldmljZVJHQgovUyAvVHJhbnNwYXJlbmN5Cj4+Ci9QYXJlbnQgMiAwIFIKL1R5cGUg
L1BhZ2UKPj4KZW5kb2JqCjM4IDAgb2JqIDw8IC9GaWx0ZXIgL0ZsYXRlRGVjb2RlCi9MZW5n
dGggMTM1OAo+PgpzdHJlYW0KeJy9WEtz2zYQvutX7JFKLZoA3/H0kkySOoe6adTpQfJ0QBKS
kVAEA1L2uCf/9C74kEmakuiZtmNLQ4If9vHtYnepH0DAwr/6O97NCHzGz7eZZTrwMLPg0+wH
vFvOWpTrWKZl4XX1vdwhYoufZTxbOJ5v2voRLJMD3qemj2u+Ez5vQPDlRzsAgpebWSPpAVZg
/GrT0JnfwvIzItwRAKyNPz8RZz2fw4LYnueYLj4zflMylwVLYSMVvKePrYgxJbjPt5t9r9BX
gTzrpYfEtqsNPgl6LlIzpE4jZm3c5KWQGUvN9RyuN2g9DanpaBt2UvHufXnHsu69zHqPc6bY
jpdcFd1V1pdR5DwWTzzpromsr6W/AWX25JWlEtEcaE2GsS/7j9UcGneN7X7Hs7L7NE7ZvuAX
A3U99SxNa0abbBol1PJ6hHbjIjdQ3smCQy5FpskAZABQqkSb3dqwB55AKWuEvkAbQPuJUMUe
QUbfeFyaZ83wgtCkPTPsIGjMuN5UUrP9LuIK0Ciecs1GAaKANgjwIMq7RmkmS6YTAfMKM5VB
LHe5SLl6ZnpRb4thJATr+UWlr5J13nDfHxhOSdjyVzmvWYk4GpEVIuEKTdXnh6WCFSLbah8Y
FPto0aBl7a1UYiswlXs8XkAqdqJEEdFjh5PzRnruwMhekA98tmQqWJHbJmgL23spOPRruU5Q
ZVpf7nRkbQHqqlU1OdV3gdKpqk5DK11gfMQz1aQuRkFzuJH9hNZByZUsZfmY87e1ZWMcELc+
m55NTK9Xdb2RGrdaKV5grsXl2iDr+e0tdFeoXjkexlYTCXuauvLvpcDEWhuF+Jv/VUJ2AfpA
slV2e1GlXlndR3i/nl+diOyBRIuaQc+rscp9nVUUHqMxxlpR1KdJX+Lp1dkepVyfiUTX153I
OIg65SN+x55P4r2QFTzhTxkmPN7ss/p6QkzcoF/VxmMS3zE8iCtiWbfwM1y+MU3zzeXV2TC4
vnO0ZFYio5X7SokeHZE4DnWto8ox/K51AQz/4SdwLYw0wOUl3Hw/b4EdTBAb6dyBhYO1pA4S
Cv/j3RWqSwTbZrIoRaxjpjiWXCwpCTbHs5rp8QbUd4hW/sBUnYtgJEH8mmjXGrabqUgcd3Qq
maHbZhNpjP1FFKVUj9BkJ3qHjaDvMu7Ti0OZOCy9BDeF0wn9gf6xc/g7fz5596LA3lfUjQSJ
yVnO1dujcWj1BNbEUj6OrO2wTHLicDbdaIKq09Ba103bIRPFNmXVVBXfyef6fo8l6NSMagBO
BHbtlNGU4pdjqhcc4Bsld3q+ao5gO961t0+qKLv3hyGyuyg3nbum6xHTDwYE2IFTLR7hyrRd
/a2bgdoeG8HtukwZ6Fkp0xMD+AItqJBrw26HcAyAZw+McnAadciIUfrtpMPrYXKgpMKPZpFn
j/Sy6cg23+iEfDuv6jS07XWxVLlUrMRmx3kSsfh7lRKwTUWEo2SWwDaOYcdEqptfivWgmDBE
OY7X67QnmBhFtkzYE5g4r+o0tK02i3yPVODrR93Icyy+SMu/etiQzt5hql4+x1TQ8LAHR6oX
StbG82zVVeXYh20CxyPOkjZWHjnaDXDTuUZ9BHm8b3zl+p2qkG3jCE3XocPGQarFodAFcV6C
22QhYx39FchhjRnrO8vum0oiinhf6OZTexLapj0sIQTfTQN7ROeghLBI7sv/MJ8qpI8GegMD
qeeZJJxMyv9TeGkYmgE9z1qbwZT6FX4sMe3j49b115vL6w/vIQzCUP/049qkIZha1FlY/sLS
69RyvWa9+VnnxO9WqOLDEr7Mvsz+AYLMZzVlbmRzdHJlYW0KZW5kb2JqCjYxIDAgb2JqIDw8
IC9DcmVhdGlvbkRhdGUgKEQ6MjAyNDA3MTAwMDM1NTgrMDInMDAnKQovQ3JlYXRvciAoZ3Jv
ZmYgdmVyc2lvbiAxLjIzLjAuMTMzOC1kYWNjKQovTW9kRGF0ZSAoRDoyMDI0MDcxMDAwMzU1
OCswMicwMCcpCi9Qcm9kdWNlciAoZ3JvcGRmIHZlcnNpb24gMS4yMy4wLjEzMzgtZGFjYykK
Pj4KZW5kb2JqCjEgMCBvYmogPDwgL0Rlc3RzIDUgMCBSIAovT3V0bGluZXMgNDIgMCBSIAov
UGFnZU1vZGUgL1VzZU91dGxpbmVzCi9QYWdlcyAyIDAgUiAKL1R5cGUgL0NhdGFsb2cKPj4K
ZW5kb2JqCjIgMCBvYmogPDwgL0NvdW50IDQKL0tpZHMgWzMgMCBSICAyNSAwIFIgIDMwIDAg
UiAgMzcgMCBSICBdCi9NZWRpYUJveCBbMCAwIDYxMiA3OTIgXQovUmVzb3VyY2VzIDw8IC9G
b250IDw8IC9GMzYgNjIgMCBSIAovRjM4IDY1IDAgUiAKL0Y1IDY4IDAgUiAKL0Y2IDcxIDAg
UiAKPj4KL1Byb2NTZXQgWy9QREYgL1RleHQgL0ltYWdlQiAvSW1hZ2VDIC9JbWFnZUkgXQo+
PgovUm90YXRlIDAKL1R5cGUgL1BhZ2VzCj4+CmVuZG9iago2IDAgb2JqIDw8IC9GaWx0ZXIg
L0ZsYXRlRGVjb2RlCi9MZW5ndGggMjIxCj4+CnN0cmVhbQp4nF2Qz2rDMAzG734KHbtDcZNz
CIyWQg77w9I9gGPLwdDIRnEOefspXpvBBLb5+PQTn6XP3aWjkEF/crQ9ZvCBHOMcF7YIA46B
VFWDCzY/VLntZJLSAvfrnHHqyEfVNKC/xJwzr3B4dXHAF6U/2CEHGuHwfe5F90tKd5yQMpxU
24JDL4PeTHo3E4Iu2LFz4oe8HoX567itCaEuuvoNY6PDORmLbGhE1ZykWmiuUq1Ccv/8BzX4
vb3y0r4/tSvU098GbP/c09mFWYKVZZREW5ZAuO8rxbRR5fwAV7tx+mVuZHN0cmVhbQplbmRv
YmoKNzQgMCBvYmogPDwgL0ZpbHRlciAvRmxhdGVEZWNvZGUKL0ZpcnN0IDQ4MAovTGVuZ3Ro
IDMxMDUKL04gNjEKL1R5cGUgL09ialN0bQo+PgpzdHJlYW0KeJzFWltv20YTffevWKAvyUO4
XO6VQVE4TpMmRZrm+qVAWhQ0tZIYU6RMUr7k139nSZEiadmOJQGFYt5mOXt2ds+ZWSmS+EQT
qQQxRDNJQmKMIszHP2EIY4QFPm4CwrhyB8Ik04QJwpTGvSTMBDjglVCjvSYB43jJkCAwIR6S
QEifBPinfAYjCbTCISBB6G444b4RaER4INBIE87xXmAIl1yiEeHKBDASbtwN2rt+uCCCucaS
iEBLNCJCwB8PiZAKB58IDVCCERFKNA6IZOhfcJyFa0xkIDUaE8kBBo+k8OEMoZAAg6FLqTle
RmhCPPSJ1BqNGJEGcZD4F7rGnCgfnaAL5cYtJVEBBisVUdyHXeMcorEhCh3jJaKUH+AlnI1r
TJR2L3EEH/4xDVoApJJEawxKKWIYxq00MRzjVoYY5dqFJHTttU9CGeKMkPs+Gro58QVgAzzz
TcB+/pnQtzwIxU+B/1NgvvzGcBWSrxzz/oHQl0n1imh0888RXU6mT08XmPqvmNGNVYXCC3p2
NrLLgHmiZw9G9kAzz/TsHJ37PbuQQ/9ibGd84F+O7NznPasaWYOQ9awaVj3ArgZ9m5FdYI47
azCKGhZfZ+Mjmz/wK4ZWpXV/RHJkFcbrzYcaWoUcRFOPrDzsW83QGoSybw1HE9UM6Jdfjtya
eUbc8SOhnz+8PnIH8mgRJWmVP43Sq+MzW2Q29fJi9ti9QE/yYmIL8tVF3nc9PMe1B+HwPTj1
PVU//GDjinwFnZRAeBRUQXsGd1J7QT2HH1en1fXSEvomyc6O6Kf6+lmW5dUdsOZVtSyfUnp5
eeltcNFJHtNFlD1ZRjNb0ofDDHTobaByU5/2hLqOYJqcxk+idDmPjst8VcT2Mirs7sFkWE3Q
X2m8EEoRGE/sjXAWx8f482bZandcvnS4ApygGYqpA+BKk2x19QTTenwxs4W35zKUIa8jp4wH
AYWQHwChnQFYdRyX3ipOI89OVrtBM6yGJqSnkYPC4ADQroprxthxc/LKpLK7QVNhAy3w6nTo
HwDat+hsdXpc2Mk8qrw4X+wGTK6JwD2kAakOQYSVjbHIjqvVrIi+e1G1GzAhG2DAh8mUB2HC
/N9FvirtMUMK2zlivCEAFx6KLCkOQYBvl9GZTa+9WkLcs93RBQ0HFDS3rtMOgO5DEs+jYuK9
iIqsnEeXx1Gx2B2g3zBBA5krKA/BhDJaHM9sVuX5zrImwoYHgnsoB6V/CB5UeVFYC+Fd2dSq
PSdWmIYPKvBQqoeHoMOpzbzT3JE1PT5Lqjqh7gxPN6yQvod9iDCHYMXcJme5Z5OynNp0Uh2X
iV3YrNwdo2q4gdra7VoOQY3JIkrjPF3sK8PYfTSzi0IV2NSerMiellVR5ekj/vjhcITAQ2yq
eFOLCBTeYYjbfYuRvUCBnti/BgH33E4bsobdX+Ak+D9DFED53a4bZQEgBQaZHRv0IPgPITGk
JkSJGV1HCckcUWKh2RdSYbNoYR8Fu0RJK08Z7PQxV25LgPgw6L5Cdt9rT7DfCvdhwZ57DUpw
7SkRHAJUtVhOk9T+Wz7abY1jo88Fa0tF5r6s2VOmsqfTfGmzHREZt53jQSNO2Cf7DPj2Fqdp
YffGtN7AYadZI9wzX++1nDi4r5H0tKlXkytpGFJgeIgNepKd5lfecMdLN3thGn1bxDlSz1XC
+eXV4voiX5xNeF6ei2DBlxMZK76K42mSIYt+W66q88vjMl4Jjco8yPMl/UR/2q0+F0zWIoNd
FucYtPovpVgJj4UtJO4zV5k/BNLzfJVV0M0j+jIpysp95em+4jmib6Le3bCxPqK/Wli3fFPY
uRF9N8pf373DPMIDFKe5/5RUqSWPaj/k70fOyd9NFFx3TSfrb9OO6Ft7VbmvYIeu+MgV5Hqr
A946ULc4eFfYiw3utbvnUWVneXH9eBSCo4Fv0Q1bD6LX3jUdmzs7lsOOn62qeV5sHYncuFAj
tPEIpxniVB3OsI9Tqj5Oqe/EOeoS7uMiWVZJnm0Fq1uv4yVghn4KvFMkWNLnqyhNpondPnbT
umO3uGtAhiOQSTTL8rJK4nKr17D1GtzltRvC2uv7Ful2p8xvvfI7vbKh15erLHbRJFGFgJyu
qu3LmbHWu7jT+4hp5Cv52ob6n3+2e26pJsdUG3oeEe9PrIFF8j1y2G8JSEtBOabg0LEYr7Bl
YePo1hXGxG2ORpQ6ieIzJJJJSbBXWcLhaZIm1T3UZrLljDQDzpgBZ8I7OTNa6++KfJmXUbp9
OKrz0jFx/Z7yXJnkXZFPc0s6wkx/cMG0TLwhxgOs4z5fJWXV17+BS3ObkxH/PlpLorTMOy8n
UWlf5ngPLRa2fHKSp5Mj+iJDQk+ymft9q3m/jvzzeVSgzsEd3mj1Ji/cr1+bCakbscD0cp7L
dqxNeu7dI/olmVTz0v2Q0STX7Z/WKv3NsTm318OPDlBBK12f3Z9PFHOs1tqMWrknztZYpPvd
T+mBL855d+x6le4nSNGdnbV9HnSe3JVxFly31u4NEzZv1dRzSNrRiDrjtR9n737T+TWZTi1m
N7aIGA8ILZdRbF0GoEtbJPnE6SzNM+s0jFbzArMM8tIyucLBXtjM/TCJooeegFzw535/pC/d
j470FQFa+pbQPwl9R+h7IK8Lo08khK/TAlS1WDrTioS8uy+S2RwPNKERnhEaEzohFJM7JXRG
6JzQhDAf5jNCU0IXhGbAB7SEnhNaABRgEroiDCUTvSQUOK8J/e7WDZwkrmJqVku7ErvCrYzd
KtcGq/B5tHxlayQqdLdYeB9tRR7RtzSiC2rpc1rRGc1pQa/pM7qicxrTX2lJE7qkGT2nKbqi
7+lLetof6GCQ9E/6nZ7QM3pJJ/Sdi+g65E1cXdCbgNMr1LFT+op+fFzrVg3zSVDXc2k0Kzve
nJzkV66kdDb346+PwNY/SDqjK5qGVHxdIbfFz7IZ6Is89rGyi/+5iw2ZNkS8jdSNjz6tW92/
m9b9GmpfWrtF39Jl+GkJ0Le46w317vuMqTvo14TdsS8jNY3XtHOEbZ4Ga6Fw5z45G2tNXvd9
S9f+5sc9v5e4YN/SyXXNq+ayoRRFpLG8yjNX49DqMm/pTKfYfrmcQLMEPKdxniLRNNS9n6gg
/yrDVqaM88KueRuGY94yXzbENWPWMiaGtP1hmvIBTZUZ0rRhDoZZj6oe44CJBUhcgsQJiNsF
rBevIVVzEHoGYq+a6EAEJiB6G1EowiYGjvjTIVF1S9RQ3SCqbohqmr3cmKgtvfpUfaJ35OqH
HBvRPlXbDN6jKrtBVd2WEj2qhluomn/OEji2pNs8bCGv+09FDYGFv8mbLYFbWroW7tqdW0Js
+xveuZbBjWzsCNzmbZeVXfZrc3jdZ01fZzEm7CxtK/dmncFdPq+zfghSN1c383if+O25y+M9
hO213jK2FlN/3Hfnci5vlQWwd5Fkq7JVBw6una/yyk5OU/cfo5qbtT5slw10hzW/WCAbz6+X
c+T7tjCgZRqVyMffbZE3JcJNVQEZLqwr0te1Am3YOlAamBZJczkqJegLV0rQ31wpQV8T+jvR
qEveEPrHoKygH9ZlBf1MDAToC6F/7Vti0G/3Vxj0YmuBQU9XaQoVemihoVVfwTaa9IX+VtcC
tYT1BOodNCyHCpVQI5QbriSB2l1DpRrtq3Wvnn6UD3PIHcSrFrxT6NW5k6mXTsWakuMZ/baZ
B/oGJccMIvp5Pef0Bf2LfqC/o1j5g75GJXJJP6J0aZdSs0BQ/1ys5XGzrFDk1Mukmfh6razL
myZKKIHe14vk1jLpwTWPCc02KV2r335FD7aPRWKLnojqdvN9Z72j+9+4rUVU/li9owbVQHPn
juO/7U83lr6H7U9vrYG2vn0T0X04HoL2fktzvK8e4uBktMAiL6Ns8kPVEV2mTjAbzevtg+6W
O8lbrTPbdA1iZN2XXq48hrzp0KmXEWvR2q3KetjuaFxnNeLFArZWr7pDW3ePpbm+bXq/V8iU
6AuZNLIvZBcQqQRCM+1JWgyRcsVXV0C5aixay8hpX+Q2mtTNIiQvhaJdQjp6VVcHH+J2ffue
azOsZn8FxWzUslGpz1C1GcSy1ql6xlqBrDXKLQ0o2llbBw60SYSdNvGxNmET7Var8UdVXqcn
D5Wl/wNyie9gZW5kc3RyZWFtCmVuZG9iago3NSAwIG9iaiA8PCAvRmlsdGVyIC9GbGF0ZURl
Y29kZQovSW5mbyA2MSAwIFIgCi9MZW5ndGggMTg4Ci9Sb290IDEgMCBSCi9TaXplIDc2Ci9U
eXBlIC9YUmVmCi9XIFsxIDQgMSBdCj4+CnN0cmVhbQp4nCXP1xHCMBBFUdnkaHJOJtomRwOm
AprgkxoYCqAM+qAKiqAQpCt9nNnR7uithFDHEMLp4EspLKVRFaasr6p2n7o20MQQhjGCUYxh
HBOYxBSmMYNZtDCHeSzIxMRP5SYfOreIJSzL+9JHdcs33a1gFWtYx4acsQM1aX/1ZBNb2MYO
drGHNvZxgEMc4Rgn6KCLHk5xhnNc4BJXcpPJXW+yxg1ucYd7PKCPRzzhGQO8yNe8t/qd74g/
U1AgxmVuZHN0cmVhbQplbmRvYmoKdHJhaWxlcgo8PAovUm9vdCAxIDAgUgovU2l6ZSA3Ngo+
PgpzdGFydHhyZWYKMTQxMjAKJSVFT0YK

--ngfcrephrk27w457--

--vrvidnkls7l6jzip
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNvOsACgkQnowa+77/
2zLgIg/9Ex/YrXkL49O8JM/VTGu6aCdkdtVznEzSuvIx3G9wMZo9iCHqhHyFsUrM
/dOpXcMI5ySQmwtyifdzDSijCiHjT1UhuzHZJ6xEMm9xtozmF9B24yGjNptyzw8n
h65bgXeVzTArQ4vrdY9DDPEzwgW3DLBbkMWMN2Y3b8t9h/b7Vr4g77ilsFtq2UGw
+KIIrFXb63s/hbcUjvayaDTwFDxAQhIIDw9GUtswMsvIo91LaylMX/xaHlkCqB5c
EK7soec65d6Eg4Kj9/kVT9A9Opib65qZ6fc9LY7R0FtHw6uj+X22ks2EJjseiGJE
WYYqHyHqRkD6ReAEkZg9ykpUsJuRnpySu9f38Y+2xOnSwbdsDtNqlh0JgPbT5wOt
lXI1gS1uUle9gddhPjwxUVBTS749pUKsR9+TVYZs51wGvW+cfDBVNs0J+itBcVmv
RfwQK8qqH6ajw48LvFO76laMtRklTHoqvBW4ukQtHBi2dQB/CnwsWOU4CmsBZUAD
QAI3+nUqel1n3WbWOlchPJ5DneHIRkl7JiFoTtnPA3B58F3yMVfICz7M5W5eujJe
qUdw/El3Ffiu8c39RZd7wDi09lJ1fkLjwsSEjcMGCbsw5Dyb6Vtqe+U3aDoK4VUI
l3KmsYtPSrWdK3PW9UdiPoZEUA18/2FGaODDw1Mf5a+FDDqFVSU=
=udWl
-----END PGP SIGNATURE-----

--vrvidnkls7l6jzip--

