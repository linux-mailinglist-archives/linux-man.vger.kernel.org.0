Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40C0E75AF62
	for <lists+linux-man@lfdr.de>; Thu, 20 Jul 2023 15:13:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230362AbjGTNNM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Jul 2023 09:13:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231791AbjGTNND (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Jul 2023 09:13:03 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8FBC2710
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 06:12:22 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 319B961AA2
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 13:12:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8494C433C8;
        Thu, 20 Jul 2023 13:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689858741;
        bh=BZa4LQnL/UO/yt8fk91Kn4v3t3Gb7EIZT08YbhKOHT4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=UVvvuwzWhipEcdrNrupp92TCvSTBQ5Zt/bUwZcjiML1U8ivL9rF4S3q9BwlH6W/Ko
         dTBFbyi/OIIe+ooN1gl9P8btxAaHHUwR+NqAn6faVtC8Vt9dED6yAaWOr4lSE0w5pK
         LFSOvZUmbRblonChvL/0rGoObNRxVUk9CuTo3v1wdx8OZW8VYfgXTIKN/owa5lUf4m
         hmfGawNvbrDMNl4gLSd+NW2u7fwHb2WkVsMNLtfYIWXg8L39haKjlirKUsE89evptl
         //+J1ituMtbZdRe/weKygvRDH3yNaTWaQUqOLZ9xqiwSRYjxluEDSz8bCCkZYfaA28
         ZXLdgh1NlQH8g==
Message-ID: <06a090cd-cc84-5be1-a733-1525f5ef7444@kernel.org>
Date:   Thu, 20 Jul 2023 15:12:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/2] man*/: ffix (use `\%`)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230720020436.vejzttvkklhmkgpn@illithid>
 <2f35c3df-c14f-cca7-b136-328638988ec0@kernel.org>
 <20230720091048.nghqc6fj7pcnqiep@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230720091048.nghqc6fj7pcnqiep@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------vZOCDqilC0nJzHf8lzgLM0HE"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------vZOCDqilC0nJzHf8lzgLM0HE
Content-Type: multipart/mixed; boundary="------------LMxumViPwrASb0OvtuddqzmQ";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <06a090cd-cc84-5be1-a733-1525f5ef7444@kernel.org>
Subject: Re: [PATCH 1/2] man*/: ffix (use `\%`)
References: <20230720020436.vejzttvkklhmkgpn@illithid>
 <2f35c3df-c14f-cca7-b136-328638988ec0@kernel.org>
 <20230720091048.nghqc6fj7pcnqiep@illithid>
In-Reply-To: <20230720091048.nghqc6fj7pcnqiep@illithid>

--------------LMxumViPwrASb0OvtuddqzmQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-20 11:10, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2023-07-20T10:18:15+0200, Alejandro Colomar wrote:
>>> -.BR getrlimit ()
>>> +.BR \%getrlimit ()
>>>  and
>>>  .BR setrlimit ()
>>>  system calls by implementing
>>>  .BR setrlimit ()
>>>  and
>>> -.BR getrlimit ()
>>> +.BR \%getrlimit ()
>>
>> So, you don't want MR in these cases, right?
>=20
> Right.  These functions are documented in the same page, so it's not
> sensible to mark them up with a man:getrlimit(3) hyperlink.
>=20
> Yes, it is possible to conceive ctags-like internal linkage, but let's
> storm one Bastille at a time...

Agree.  Let's kill ctags another day ;)

>=20
>>> @@ -230,7 +230,7 @@ .SH NOTES
>>>  expects that it may exhaust its standard stack.
>>>  This may occur, for example, because the stack grows so large
>>>  that it encounters the upwardly growing heap, or it reaches a
>>> -limit established by a call to \fBsetrlimit(RLIMIT_STACK, &rlim)\fP.=

>>> +limit established by a call to \fB\%setrlimit(RLIMIT_STACK, &rlim)\f=
P.
>>
>> I think I would fix those \f thingies before messing with them.
>=20
> I'm pretty sure you know I'm not fond of them either.  ;-)
>=20
>> Do you prefer it in this order?
>=20
> Yes, because it enables a larger, more impactful change that fixes a
> problem with ghastly amounts of noise when regression-testing changes t=
o
> Linux man-pages.  When adjustment and hyphenation churn, the results ar=
e
> ugly, and often irrelevant to the work being done.  With the gzipped
> change that followed this one applied, that should stop being a problem=
,
> for the reasons explained in its lengthy commit message.

Okay, I'll try to apply this set as early as possible.

Thanks,
Alex

>=20
>> Also, it seem this one is wrong: it should be I, as it's code.
>=20
> That decision is above my pay grade; I'm not the style czar for the
> Linux man-pages project.  ;-)
>=20
> FWIW, I prefer italics myself for 2 reasons:
>=20
> 1.  The general typographic rule which says to use the least garish for=

>     of emphasis that gets the job done.  That means bold is nearly a
>     last resort, before full capitals.
>=20
> 2.  It's an inline code example and I'm accustomed to seeing these in
>     italics (or Courier) in well-known Unix software engineering texts.=

>=20
> A counterargument is that "setrlimit" is a topic of the page in
> question.  groff_man_style(7) says:
>=20
>         Use bold for literal portions of syntax synopses, for command=E2=
=80=90
>         line options in running text, and for literals that are major
>         topics of the subject under discussion; for example, this page
>         uses bold for macro, string, and register names.  In an .EX/.EE=

>         example of interactive I/O (such as a shell session), set only
>         user input in bold.
>=20
> ...but one could well counter that in that case only "setrlimit" itself=
,
> not the entire function call with parameters, should be boldfaced.

The below applies here:

man-pages(7):
   Formatting conventions (general)
	[...]

       If the command is short, then it can be included inline in  the
       text,  in italic format, for example, man 7 man=E2=80=90pages.  In=
 this
       case, it may be worth using nonbreaking spaces (\[ti]) at suit=E2=80=
=90
       able places in the command.  Command options should be  written
       in italics (e.g., -l).

       Expressions, if not written on a separate indented line, should
       be  specified in italics.  Again, the use of nonbreaking spaces
       may be appropriate if the expression  is  inlined  with  normal
       text.

>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------LMxumViPwrASb0OvtuddqzmQ--

--------------vZOCDqilC0nJzHf8lzgLM0HE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS5MqgACgkQnowa+77/
2zKxeA//aQgFWmYmIXfvMu6ZctvM55fkcGaFjUzuFmKijIijn+B7HIG0JAnPztJJ
Zqi5HquaZnxeK4nYupZvSne8X4VGn3GeWzztWZNa6Rq6reInbYldgmVOx5/FxILl
eKEVsydt/9d9oZ1M6oIYJAYemluNfL8hshRqILtDxkTCnmUSn0yArkN9Md54M78e
KQcXOGL9WyTZOsaLQZMjHbuBXoWsw0EHl9bGTztVzf4zVt4EgLsXdA+wUfl8bJtq
fnltJ393yogEe5JmWB2x/hc+sNn+ho/gDcVot+WLNzATS4Pp1x+kEpIdZwRMjZGO
bGfbMMN455dn++nWFzbcBFsZZoGj2SXchdFSNTmOPg7fhxqvGQk9zF7Edhm6/30l
+ctyilLs6Ts6dleAmorT4BKMSVj4nV6qF2zYTwc/VoZf+ly2nMAGASd5QW7SyJwh
G+8FddpAqA4n1i9sYS6viCWZSCYuCvL1a9Q0+lomRM4DPzuYUWHqzIrf2xY1OF52
Rtn7Tiar4vNCPnJLDhkVFgD2lscZECyJiONlTMQbqX1rizv1gjZAxkgDLJTgfBDV
UASUtoO49YG7kug44LUV3iTUu/DztjEHWv8J+P4kIvGWs+2jFZXeumbT0OzGbIWg
9DtBw/j3nwRIenZWYkoTHks4GiMAZ0PXJ7t2RWn5T7ht+AKdgQs=
=xcTr
-----END PGP SIGNATURE-----

--------------vZOCDqilC0nJzHf8lzgLM0HE--
