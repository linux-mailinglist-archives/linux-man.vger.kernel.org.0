Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAAC178BA04
	for <lists+linux-man@lfdr.de>; Mon, 28 Aug 2023 23:13:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231962AbjH1VMk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Aug 2023 17:12:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233505AbjH1VMM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Aug 2023 17:12:12 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C593113D
        for <linux-man@vger.kernel.org>; Mon, 28 Aug 2023 14:12:09 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 4D3D863FE4
        for <linux-man@vger.kernel.org>; Mon, 28 Aug 2023 21:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE3D7C4339A;
        Mon, 28 Aug 2023 21:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1693257128;
        bh=WSbltLec5qm4QLXxYNlRIMIEtjxg+t3L2TdA2WmxJxQ=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Ln8T0moiWpU+wNZWZK0adHbE+z33ppa1NRvry/Lj9E7ew0QikD/lgEwTmJOS5i6wl
         T8d/yC/mfApPjZa12nSGdFm3X6K8z5FehaiLgPlIqqdfCPOpQjtr2rSmH9aDDUUJKM
         Pen0WfUgQixZcIEtLrmf/kZKVDEzWCggFErR+bwKI/1kxX3At/0d6XhyuN9R/EU5au
         ktDm3jC7CxLaqMgqV0F5tXjESLEhtsz2/KbTiAS2KEpQHm7uGwQXmq4UIe0a2YtL8S
         OT4LmbXMJvGLTIeQraAFiyw6K0H14wdtw0hgLEht3CUphvXHADrEAh9YcAD9fMoWtE
         fRrBMe5vmiFsQ==
Message-ID: <fab31245-a17a-f472-f570-f5b35d2c79b4@kernel.org>
Date:   Mon, 28 Aug 2023 23:11:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-US
To:     Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <2704680.mvXUDI8C0e@pip> <a1550f24-6b0f-0173-967a-7dd31dbafd05@Shaw.ca>
 <3262525.44csPzL39Z@pip> <54945a93-399e-620f-be6e-bbe740abb21e@kernel.org>
 <d373a66b-8312-fcb4-103d-b6ce22a6b40f@Shaw.ca>
 <ff61e9fb-b2ed-e136-6249-1b8541a75d7a@kernel.org>
 <1435b3f6-b4fb-28b1-3c54-547c9a7e919a@Shaw.ca>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <1435b3f6-b4fb-28b1-3c54-547c9a7e919a@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ibVMYjjLZX0OItK2uVaUQZ2s"
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ibVMYjjLZX0OItK2uVaUQZ2s
Content-Type: multipart/mixed; boundary="------------8io8A38xETd4C3IvzD2o4VtG";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Brian.Inglis@Shaw.ca, linux-man@vger.kernel.org
Cc: Deri <deri@chuzzlewit.myzen.co.uk>
Message-ID: <fab31245-a17a-f472-f570-f5b35d2c79b4@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <2704680.mvXUDI8C0e@pip> <a1550f24-6b0f-0173-967a-7dd31dbafd05@Shaw.ca>
 <3262525.44csPzL39Z@pip> <54945a93-399e-620f-be6e-bbe740abb21e@kernel.org>
 <d373a66b-8312-fcb4-103d-b6ce22a6b40f@Shaw.ca>
 <ff61e9fb-b2ed-e136-6249-1b8541a75d7a@kernel.org>
 <1435b3f6-b4fb-28b1-3c54-547c9a7e919a@Shaw.ca>
In-Reply-To: <1435b3f6-b4fb-28b1-3c54-547c9a7e919a@Shaw.ca>

--------------8io8A38xETd4C3IvzD2o4VtG
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2023-08-28 20:24, Brian Inglis wrote:
> On 2023-08-28 06:17, Alejandro Colomar wrote:
>> Hi Brian,
>>
>> On 2023-08-22 01:45, Brian Inglis wrote:
>>> I am in favour of all punctuation being treated as word spaces and so=
rting
>>> "cat ..." before "cat..." but find the real orders more evocative and=
 easier to
>>> decide about than examples.
>>
>> Here's an excerpt of how treating - and _ as spaces looks like.  I thi=
nk
>> it's a reasonable order.  Should I apply that diff?
>>
>> Cheers,
>> Alex
>>
>> $ git diff
>> diff --git a/scripts/sortman b/scripts/sortman
>> index a8f70bab5..6d1d92f09 100755
>> --- a/scripts/sortman
>> +++ b/scripts/sortman
>> @@ -9,7 +9,7 @@ sed   -E '/\/intro./  s/.*\.([[:digit:]])/\10\t&/' \
>>   | sed -E '            s/\t(.*)/&\n\1/' \
>>   | sed -E '/\t/        s/\.[[:digit:]]([[:alpha:]][[:alnum:]]*)?\>.*/=
/' \
>>   | sed -E '/\t/        s/\/[_-]*/\//g' \
>> -| sed -E '/\t/        s/[_-]/_/g' \
>> +| sed -E '/\t/        s/[_-]/ /g' \
>>   | sed -E '/\t/        {N;s/\n/\t/;}' \
>>   | sort -fV -k1,2 \
>>   | cut -f3;
>> $ touch man8/ld-z.8
>> $ touch man8/ld.8
>> $ find man8 | ./scripts/sortman
>> man8/intro.8
>> man8/iconvconfig.8
>> man8/ld.8
>> man8/ld-linux.8
>> man8/ld-linux.so.8
>> man8/ld-z.8
>> man8/ld.so.8
>> man8/ldconfig.8
>> man8/nscd.8
>> man8/sln.8
>> man8/tzselect.8
>> man8/zdump.8
>> man8/zic.8
>> man8
>=20
> Looks better,

Thanks, I've applied and pushed the patch.

> but should your sort *key* field instance also drop the section=20
> suffix (already in prefix)

It is already dropped.  Am I understanding it correctly?
Here's a debug patch to view the sort key field:

diff --git a/scripts/sortman b/scripts/sortman
index 6d1d92f09..e690f23ea 100755
--- a/scripts/sortman
+++ b/scripts/sortman
@@ -12,4 +12,5 @@ sed   -E '/\/intro./  s/.*\.([[:digit:]])/\10\t&/' \
 | sed -E '/\t/        s/[_-]/ /g' \
 | sed -E '/\t/        {N;s/\n/\t/;}' \
 | sort -fV -k1,2 \
+| tee /dev/tty \
 | cut -f3;


And here's how it looks with man8 (plus the dummy files):


$ find man8 -type f | ./scripts/sortman
80	man8/intro	man8/intro.8
81	man8/iconvconfig	man8/iconvconfig.8
81	man8/ld	man8/ld.8
81	man8/ld linux	man8/ld-linux.8
81	man8/ld linux.so	man8/ld-linux.so.8
81	man8/ld z	man8/ld-z.8
81	man8/ld.so	man8/ld.so.8
81	man8/ldconfig	man8/ldconfig.8
81	man8/nscd	man8/nscd.8
81	man8/sln	man8/sln.8
81	man8/tzselect	man8/tzselect.8
81	man8/zdump	man8/zdump.8
81	man8/zic	man8/zic.8
man8/intro.8
man8/iconvconfig.8
man8/ld.8
man8/ld-linux.8
man8/ld-linux.so.8
man8/ld-z.8
man8/ld.so.8
man8/ldconfig.8
man8/nscd.8
man8/sln.8
man8/tzselect.8
man8/zdump.8
man8/zic.8


There are no suffixes in the second field.

> and also treat "." as space?

I'had been thinking about it, but didn't make an opinion.
Since they are rare, I think making them stand out a little bit
by having a special order rather than just being mixed with the
underscores would make sense.  But I'm open to change that.

> Where would you expect to see ld.so?

Not sure.

>=20
> Also, in `sed`, instead of cloning the line, at the start of a series o=
f=20
> executions, make them all into a single inline command script, start wi=
th `h` to=20
> *hold* the input line, and end with `G` instead of `N` to append '\n' t=
hen the=20
> held line, convert to `\t`, drop the braces, and you can skip the then =
redundant=20
> tests, something like the following should get you close (tried it earl=
ier, now=20
> sadly already gone from history):
>=20
> | sed -E '
> 	h
> 	/\/intro./  s/.*\.([[:digit:]])/\10\t&/
> 	s/\.[[:digit:]]([[:alpha:]][[:alnum:]]*)?\>.*//
> 	s/\/[_-]*/\//g
> 	s/[_-]/_/g
> 	s/[_-]/ /g
> 	G
> 	s/\n/\t/
> 	' \
> | ...

I prefer having many one-liners for a few reasons:

-  Not everybody knows what h and G do.  I did't.  And I will
   soon forget.  In contrast, my implementation has nothing
   rare in it.

-  I can inspect the contents at each of the steps easily by
   adding a line with `| tee /dev/tty \`, for debug purposes.

In general, I avoid having large scripts in other languages.
I prefer piping many one-liners, even if it might be less
efficient (but it uses more cores, so it might end up being
faster; I've seen such things happen already many times).

Cheers,
Alex=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------8io8A38xETd4C3IvzD2o4VtG--

--------------ibVMYjjLZX0OItK2uVaUQZ2s
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTtDZwACgkQnowa+77/
2zK4Cw//d+rXtPWDBe7mJGWEMHrKFIv+dyifHOQxr55EDz8IfOwNeTZufHy+8RMm
eSLTsHD/1Kfmd+KE4pKIqGiuc70QjWFzTRxOqaxnWxAOsoc0qsRMa/Rz6BCGBSUE
Ws4Ep2kWyPWHNgpYmVLf9RydTItPxAvzejCzIT6CzfUVCB2v9pjnfBtyWYirOLu4
vZjk5hBeSz9BRIWiNd9Ei32sca/ZjwNWdJ4VhAoWK0GQbWutt3jeqtlrEvEYFFwM
lcsoV3fRuybpwnogfSPyLFmTOBbpDTirC8yyEiUG8PC9uM1LlE7rWxhhZ+SbeZ8t
3tTXE97VavCLw0zODUt+npD3m2L3wn4ibUpLawwiQKpJ7d0vMvpUJLk9wxxJ+vbb
Wn8KAmmS4O0mePl6X5iAvkiRL+L0vdw9vvTQDoFBiXdL31mG2Zh9turmlv1Xy7q8
TkGiW2cQ+8YamrlgME1rNCLgS4IFi/Sv0vem3dq8aOtX101Dtmo7weNORmOMP0sV
33x8Z/jeXMx1SSO6rGt/JMOIwPjCCKupDB1Tease0O81XdmTn2MwIvThKZpKMrzg
xQqhugzMOhlBrDbfBceiuyCw1W4Badvdvat3KS59Rdm6zYceHMYP+hp0X37e4Ek/
YEkhl7jkPdQaEcRAFXJt7/JXxDn6WjmlvSRpeXOZcMU94eBt/Lg=
=p7wo
-----END PGP SIGNATURE-----

--------------ibVMYjjLZX0OItK2uVaUQZ2s--
