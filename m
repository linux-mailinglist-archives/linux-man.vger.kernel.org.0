Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C7BD75AA9A
	for <lists+linux-man@lfdr.de>; Thu, 20 Jul 2023 11:27:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229838AbjGTJ07 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Jul 2023 05:26:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230161AbjGTJ0t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Jul 2023 05:26:49 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B791046BC
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 02:10:51 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6b9b835d302so390081a34.1
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 02:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689844251; x=1690449051;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eQBqBs8yM8Gm0qUNxSUQLRxsECXykI7DZ1LzpGOuMKc=;
        b=iLnmhAD7BFu1pK33+4SZUAsGyIhzh0gNOuIXwxy0K9gUEYv1fkNZh8uEcrRqug/lbu
         XkWOUHLXuDV4QwdHABNynlabU3SeoNu3OftzgWJEptkgkIHMy0/KeIryRN8SbP0OkZfD
         dSxElKZWbb8dcZLCU+YZKozwxZZ0rgj+jf0+acSbVG4fJKaa15+zPODey5/5WwZ8KQxx
         ptQ+rIjVmPFnTUxnMxvZvRob5FoaGRw3iQ3Nzj78ahJjHmiyLaSCTg4nIFU8HMUvAC0h
         FRvohzIsNU09IQGu/p/A1rIdB6r5GOhCj0mh2ePF9cJ9Xfxp5esJBrWIaLfvA6UDJyo3
         k0wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689844251; x=1690449051;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eQBqBs8yM8Gm0qUNxSUQLRxsECXykI7DZ1LzpGOuMKc=;
        b=epLb2HAaDtN8moAH7FbQegvRZ8FcR1EFeUC/rE33fQuV7YtEDya4MBYlfW8JkoDwcV
         l49SynXQFrEMY+EeRWYaHmUnI2A/QUsCIQbyLvVCQmfPmjzYvvFuEf9Qiae19DgDgIch
         BcHdZz5oclNIs2Ty8HHqnbkD0KIeImjkKYC3FexDW9fTYvpSybGjIGeO52j404LcjfDP
         UAtwcDX3dbyz00x+ySHbPjV/d06S0+mP3gRhPavss9xr7WUTMEDI+DmewE+p5+Frlljd
         4w9bhinWRj4mcJ7sVfByldmbd9XY7nzp/4XAv9VntVZWimYvORIrSU/3YcHHePznNkzh
         8k9Q==
X-Gm-Message-State: ABy/qLYN/FkT8N5AefVfwahtujguP2+Msl2gBEjjOksTMcRR1gIX0HxR
        O39puBb9eB0OaLXCMxxctgRgK1rHOzM=
X-Google-Smtp-Source: APBJJlGSJ4fp0fvAa0qQqg7ewNpV35soBIcxY30pzh+oKyBJ3BBniFLrblGXCtqL9eYZb89ytimoEQ==
X-Received: by 2002:a9d:62c3:0:b0:6b9:c41f:ede9 with SMTP id z3-20020a9d62c3000000b006b9c41fede9mr1741888otk.16.1689844250658;
        Thu, 20 Jul 2023 02:10:50 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id f6-20020a9d5f06000000b006b9b2678639sm245276oti.75.2023.07.20.02.10.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 02:10:50 -0700 (PDT)
Date:   Thu, 20 Jul 2023 04:10:48 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] man*/: ffix (use `\%`)
Message-ID: <20230720091048.nghqc6fj7pcnqiep@illithid>
References: <20230720020436.vejzttvkklhmkgpn@illithid>
 <2f35c3df-c14f-cca7-b136-328638988ec0@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="k3bbi7uofadb23y7"
Content-Disposition: inline
In-Reply-To: <2f35c3df-c14f-cca7-b136-328638988ec0@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--k3bbi7uofadb23y7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-07-20T10:18:15+0200, Alejandro Colomar wrote:
> > -.BR getrlimit ()
> > +.BR \%getrlimit ()
> >  and
> >  .BR setrlimit ()
> >  system calls by implementing
> >  .BR setrlimit ()
> >  and
> > -.BR getrlimit ()
> > +.BR \%getrlimit ()
>=20
> So, you don't want MR in these cases, right?

Right.  These functions are documented in the same page, so it's not
sensible to mark them up with a man:getrlimit(3) hyperlink.

Yes, it is possible to conceive ctags-like internal linkage, but let's
storm one Bastille at a time...

> > @@ -230,7 +230,7 @@ .SH NOTES
> >  expects that it may exhaust its standard stack.
> >  This may occur, for example, because the stack grows so large
> >  that it encounters the upwardly growing heap, or it reaches a
> > -limit established by a call to \fBsetrlimit(RLIMIT_STACK, &rlim)\fP.
> > +limit established by a call to \fB\%setrlimit(RLIMIT_STACK, &rlim)\fP.
>=20
> I think I would fix those \f thingies before messing with them.

I'm pretty sure you know I'm not fond of them either.  ;-)

> Do you prefer it in this order?

Yes, because it enables a larger, more impactful change that fixes a
problem with ghastly amounts of noise when regression-testing changes to
Linux man-pages.  When adjustment and hyphenation churn, the results are
ugly, and often irrelevant to the work being done.  With the gzipped
change that followed this one applied, that should stop being a problem,
for the reasons explained in its lengthy commit message.

> Also, it seem this one is wrong: it should be I, as it's code.

That decision is above my pay grade; I'm not the style czar for the
Linux man-pages project.  ;-)

FWIW, I prefer italics myself for 2 reasons:

1.  The general typographic rule which says to use the least garish for
    of emphasis that gets the job done.  That means bold is nearly a
    last resort, before full capitals.

2.  It's an inline code example and I'm accustomed to seeing these in
    italics (or Courier) in well-known Unix software engineering texts.

A counterargument is that "setrlimit" is a topic of the page in
question.  groff_man_style(7) says:

        Use bold for literal portions of syntax synopses, for command=E2=80=
=90
        line options in running text, and for literals that are major
        topics of the subject under discussion; for example, this page
        uses bold for macro, string, and register names.  In an .EX/.EE
        example of interactive I/O (such as a shell session), set only
        user input in bold.

=2E..but one could well counter that in that case only "setrlimit" itself,
not the entire function call with parameters, should be boldfaced.

Regards,
Branden

--k3bbi7uofadb23y7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmS4+g8ACgkQ0Z6cfXEm
bc6aDQ/+JevvkeoFZbnX6UpkV3WbuaEePeha55r8l9JOnnbMJXkiBE7HvX3Jcb6X
d5as5rHN3baS7j8hJlSvIbuPgqONtmy+59yFN+IorGjtxzMss7To/vZOIwvN9eX1
CRYE776tGUSHmrQKiveYkZOHPCzdLAqK2Di29usO+L/1/rvRnBMaZlWPwg6yYHmF
ZJZMHfg1csZwkhJdW99RrBifSM6GceOYG08jN+m/wYc7wAvTik0oY7whlhE8B/k0
vBg3gWiWhx3G+S4rcFhwHkKXklCJb2DBKvv8p8vJfGjLOHF5aP+0uVgkcSV9jf/n
CTRiU6AGuEWSTiOTl8h4BQJVSc7uZEbI7v/1j7/QvvotBD82/kJukM7A/RGWYxZG
T9dY8CAs7SgqN0sb0jOmmC4ZU/n4ABuLgmIWWhikaGPlABXiPccrSlTWXrKVjhJ7
1WILrFlbox0O7slDCeZpz8MX3+yJwZ29GQW82wb94q9NNS/iXw4JXE8csakWuPUU
hc1B3OwigOej7yKmx8Bs50Uma5/Qpfy1U3x5r56ynlI0izcFBoO6RjzvC60h8bh8
pm61ofB86FyO8Aj9yD7Q+8p59ShVJSXCtcwBQxy9aQ9rT/jRMPo3m7X51nzq4yOL
CgAzLwxVOnz5wkgXwREc1XbFpFJOaSd4QMVgEtwgKd60MTdKDBk=
=i9UL
-----END PGP SIGNATURE-----

--k3bbi7uofadb23y7--
