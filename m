Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 761726DBC15
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 18:06:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbjDHQG2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 12:06:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229845AbjDHQG1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 12:06:27 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 194A59745
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 09:06:26 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id gw13so794735wmb.3
        for <linux-man@vger.kernel.org>; Sat, 08 Apr 2023 09:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680969984; x=1683561984;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mk7QgupQ/OMrNHevRLB2ZFnt+rFEF1u8bHr5Z6nYWBA=;
        b=fZd8A1ZgH/7nz2zZFGAS1uRpFrQ8M10bq2MFOVCZacK+HRKYGTgiRcWjLOXaz5j0Ct
         OTe8b4aRWMq2/R3LJ5zGPtKVP84G40l3AdHzO3D8twL49jVXyDk1RGODJqp2nPSw02cG
         rNmuckNOKFgsY1empddS1+Da+Lt+NmlcQMx8d0I0r6w9FrbVaj82/2y+Ek4FPRzfsCnh
         mfVb9Z/1lJkwdSXzHbUa5933R6zc3lo/nFuM6ohzIenACDnJER6B+WCOBpHIs9HdkBIe
         dpdiwdB73GEl1zqDc2wINGssbBTv6hZKOQQoe57koY6jqYMcxzTSi5Kb5Db229I0Rt9t
         jrrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680969984; x=1683561984;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Mk7QgupQ/OMrNHevRLB2ZFnt+rFEF1u8bHr5Z6nYWBA=;
        b=V4u4Mw2chR1NdPRbXG9JyQdm1YNf7sOwFsWezBCtBULp4Dd4n736phfS1DZEk+QC4I
         Y+afmyWoxh2NryU1taKGUUxiOGf4xe3QrPvlRrpKV6pdZhYJG3mTiTF9DbUQxvvyeAC/
         wCvYG7OVolP+AcPzCiJfspLk97cDTzSXSrXJ/K0YGOaCBJZ5QkWVW1FmkiBgHSp3TPRf
         n7BJuil65AAdn1OFuC7F1Ojeoi829m0b/ImaS2+zECBauyrZedcMrM6RUk9vor4oW+XS
         Acf5R0BfoPKKoKVnjN4UJR+0fpydCQJZIzwknH123Sk56pza0/JNzXKPx37/puoM4QcH
         ZyLA==
X-Gm-Message-State: AAQBX9fx5/48b05KWrdHRwAwKXT3+7Tkr9ybD5DTq3/bC4eQ70NgEaE3
        SW7HApbDfY9hBYF+DEjBI9o=
X-Google-Smtp-Source: AKy350bLPe8QlUMM4GHF7EGy+8DDTFRO/yJxjDyBSr8BZo3vX0TcH53IMQHsechMfMbv/aFVznuSCA==
X-Received: by 2002:a05:600c:2206:b0:3ee:7d95:a39f with SMTP id z6-20020a05600c220600b003ee7d95a39fmr3642927wml.33.1680969984248;
        Sat, 08 Apr 2023 09:06:24 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id q5-20020a7bce85000000b003ede3e54ed7sm8194494wmj.6.2023.04.08.09.06.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Apr 2023 09:06:23 -0700 (PDT)
Message-ID: <4303b096-698a-ff7d-1585-464c9aaadc40@gmail.com>
Date:   Sat, 8 Apr 2023 18:06:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Accessibility of man pages (was: Playground pager lsp(1))
Content-Language: en-US
To:     Eli Zaretskii <eliz@gnu.org>
Cc:     cjwatson@debian.org, dirk@gouders.net, linux-man@vger.kernel.org,
        help-texinfo@gnu.org, nabijaczleweli@nabijaczleweli.xyz,
        g.branden.robinson@gmail.com, groff@gnu.org
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <83mt3imqwx.fsf@gnu.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <83mt3imqwx.fsf@gnu.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------bOKpZzjqBaS0N0YJDbesvBkV"
X-Spam-Status: No, score=-0.3 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------bOKpZzjqBaS0N0YJDbesvBkV
Content-Type: multipart/mixed; boundary="------------R8ujWWYRtUkPmwksR3R1WiTy";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Eli Zaretskii <eliz@gnu.org>
Cc: cjwatson@debian.org, dirk@gouders.net, linux-man@vger.kernel.org,
 help-texinfo@gnu.org, nabijaczleweli@nabijaczleweli.xyz,
 g.branden.robinson@gmail.com, groff@gnu.org
Message-ID: <4303b096-698a-ff7d-1585-464c9aaadc40@gmail.com>
Subject: Re: Accessibility of man pages (was: Playground pager lsp(1))
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <83mt3imqwx.fsf@gnu.org>
In-Reply-To: <83mt3imqwx.fsf@gnu.org>

--------------R8ujWWYRtUkPmwksR3R1WiTy
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Eli,

On 4/8/23 15:42, Eli Zaretskii wrote:
>> Date: Sat, 8 Apr 2023 15:02:59 +0200
>> Cc: dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org,=

>>  nabijaczleweli@nabijaczleweli.xyz, g.branden.robinson@gmail.com,
>>  groff@gnu.org
>> From: Alejandro Colomar <alx.manpages@gmail.com>
>>
>> If you want how symlinks are dereferenced by find(1):
>>
>> $ man find | grep sym.*link | head -n1
>>        The  -H,  -L  and  -P  options control the treatment of symboli=
c links.
>=20
> That's because the text appears verbatim in the man page.  Suppose the
> person in question doesn't think about "symbolic links", but has
> something else in mind, for example, "dereference".  (Why? because
> he/she just happened to see that term in some article, and wanted to
> know what does Find do with that.  Or for some other reason.)  Then
> they will not find the description of symlink behavior of Find by
> searching for "dereference".

That's why using consistent language is important.  Searching just for
"dereference" will of course have slightly less quality, but that
should be expected.  Once you have a slightly related match, you can
find terms that will help refine your search.

$ man find | grep dereference -C1
       When  the  -H  or  -L options are in effect, any symbolic links
       listed as the argument of -newer will be dereferenced, and  the
       timestamp  will  be  taken  from the file to which the symbolic
--
       used but -follow is, any symbolic links appearing after -follow
       on  the  command line will be dereferenced, and those before it
       will not).
--
              haviour of the -newer predicate; any files listed as the
              argument of -newer will be dereferenced if they are sym=E2=80=
=90
              bolic  links.   The  same consideration applies to -new=E2=80=
=90
--
       -newer Supported.  If the file specified is a symbolic link, it
              is always dereferenced.  This is a change from  previous
              behaviour, which used to take the relevant time from the


This already shows "symbolic link" several times, so you probably want
to search for that.

If you want something that processes natural language, you can always
ask some AI engine to process man pages for you ;).

>=20
> Do you see the crucial issue here?  Indexing can tag some text with
> topics which do not appear verbatim in the text, but instead
> anticipate what people could have in mind when they are searching for
> that text without knowing what it says, exactly.

I don't remember myself having had such issues so far.  I'd like to
see real reports of readers that struggle to find a certain search
term in a certain page.  There are, but few (the only one I remember
is this one we had recently about proc(5)).  If you ever have such a
real case with man pages, please report it, and I will try to make it
more accessible.  The intention is that a combination of man(1),
apropos(1), whatis(1), and then some grep(1) and sed(1) should be
enough 99% of the time, and we should fix the outliers.

>=20
>>>> After this patch, if you apropos "system" or "sysctl", you'll see
>>>> proc(5) pop up in your list.
>>>
>>> This literally adds the text to what the reader will see.  It makes
>>> the text longer and thus more difficult to read and parse, and there'=
s
>>> a limit to how many key phrases you can add like this.
>>
>> If a page has too many topics, consider splitting the page (I agree
>> that proc(5) is asking for that job).
>=20
> Indexing can tag any paragraph of text, not just the entire page.  A
> page cannot usefully have too many keywords in its title, but it _can_
> benefit from different keywords for different paragraphs.

We can add source code comments, which would appear in `man -K`
searches, but so far I haven't seen the need in any specific page.


[...]

>=20
>>>  So when you see them in
>>> TOC or any similar navigation aid, you _know_, at least approximately=
,
>>> what each section is about.
>>
>> I know a priori that if I'm reading sscanf(3)'s SYNOPSIS, I'll find
>> the function prototype for it.  Or if I read printf(3)'s ATTRIBUTES
>> I'll find the thread-safety of the function.
>=20
> SYNOPSIS is at least approximately self-describing (although some
> non-native English speakers might stumble on it).  But how would a
> random reader know that ATTRIBUTES will describe thread-safety, for
> example?  I wouldn't.  Isn't it better to have a section named "Thread
> Safety" instead?

I don't know the origin of the name of ATTRIBUTES.  There's
attributes(7), which documents what you can find there.

>=20
>> text search has false positives, like anything else.  But having good
>> tools for handling text is the key to solving the problem.  grep(1)
>> and sed(1) are your friends when reading man pages.
>=20
> Modern documentation is not plain text (even if we ignore
> compression), so tools which just search the text have limitations,
> sometimes serious ones.

In some cases you need to search the man(7) source code to get
extra information that is difficult to search in formatted text,
but that's for rare cases.  So far, I find mostly everything I
need just with text tools.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------R8ujWWYRtUkPmwksR3R1WiTy--

--------------bOKpZzjqBaS0N0YJDbesvBkV
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQxkPcACgkQnowa+77/
2zLgYhAAj7QGp4iv1VOKJ76dnYArvSv+XBGoQkkMqsfPc9LQ0h9fu6tJqXeQWgkf
t1aGLx5vaMVj08ZUxaBY8uZwPZZb85CVeQbTY7djAlufK7Qj9uz87GCIDBXwuawn
QooG9xbE+gk8zoXIN+JfBrvesmigC0R9HFDzTp0hsDtFrSLeRadaaVVTeSiNVsjB
dW/37H4yFsq17ggSk/EGx3wW3NqjisHm1mhO4CkojmkmK6YrEQdeD6IuNDuy5aFj
Sg8/EFPZOFSPnP6MGW4Pg1/oAD6Rr6WlKcoVOSnKDHbo9yaxTnQW9oKWQB7qJ2Ok
Xc46QApugpAudJLWDyXLluaufv40SfC23hNuU5+imF4Efoek2yzYTZ7X8U51lAAU
XYywk5IgONLYV6BZsxtxe9y8yJVtXDpMolMoNWkcbUapzRHkL0Ae6eAxOjsGWp0v
LxB3VZX6NBaeq3G5VydU5N0qOHRqQHu0dvQhLcxBUJMBFeVCLzjpf2ufm7cSxWvo
rAcz4GUHvyR9aQTcOsdV+yaKsDcV9+mt9XUcD+hzafSAKdQrAVTpqRv3ZrImBYYE
l3WnhRMdCmcAxe+1l8vhO61VmkGKiL7/Dsu5l3lnkDAm2vOMog+ds/gt8n3t71j9
1YUJJcPgUCdFsLSP3dZ9h5ImyHMInWnZB1Ua4MFVKbKEIsG+xqo=
=X8si
-----END PGP SIGNATURE-----

--------------bOKpZzjqBaS0N0YJDbesvBkV--
