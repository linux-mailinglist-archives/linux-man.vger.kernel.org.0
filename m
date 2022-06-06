Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA65E53F1C2
	for <lists+linux-man@lfdr.de>; Mon,  6 Jun 2022 23:33:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231336AbiFFVd2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jun 2022 17:33:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231244AbiFFVd1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jun 2022 17:33:27 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94AF0DF1C
        for <linux-man@vger.kernel.org>; Mon,  6 Jun 2022 14:33:25 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id k11so21391086oia.12
        for <linux-man@vger.kernel.org>; Mon, 06 Jun 2022 14:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=PHGqbL1oYfG5k+v9wWVp10uaXnN6qZQugS1FseQPLfM=;
        b=JF0J3AEFx1C+/lQdb4YYQQAaJw5jl68r5f4O5iQvmKzIlgz5USCegel9NRbDqujn+8
         l7rY+OehMln30dUXXc+fM6vFuxycOBqEAqqdju+sIhi0CMPfl6aMrUk30mYZqzqk6Lir
         U9TVNJSS5V8+rkZIM3Kwr6fv6XuKukIEW/Xj1fwBGFAiEaM4rgd7jR4LsBfNNerI3u0f
         XRZ1ZOwuOKdnbVaORzc6ezZe+Xz+gUwck8R9bpxC4WqnSF91Z2Ixga2PC9sUJ/GWMIka
         g83WltI/XhJP3wiSJOrPyuBpCrL0COGaqk5SOKRBVJIPMB6IO+cDIGW019vcaYNJ7yXG
         aTjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=PHGqbL1oYfG5k+v9wWVp10uaXnN6qZQugS1FseQPLfM=;
        b=xdVocjJnnM1xxC540fKXUZ8kJ/dqKUKxVjco/bi9GtC56NgPl4kxd5jkZMYf3iUn53
         3l5lf96jPJtINMZZlF0vhxQBbHPVBsym/eK4how3lsvG7Y6btSBZrwi9053ZJbI8wtPk
         Jf1tjYOLobEGumRWKPJQlOICZdk+EadpcKl6aWOE6mXCJ3ON0z4RDrdE9UJ6WF4M+DsD
         ftbwK5kxLHunhKF9UXcF7oatHmRPyZ+QaAvHUqGr6ftPP9OSOZrqdwfPX4nzzXSyZGZi
         P3aSPMBYaCfXQ9DRcCR2/E6gReAPP2ZoL/In83T1TRztbFAdxCjLa/2s3a9MbHwWIrhw
         bEBQ==
X-Gm-Message-State: AOAM530IbhOhNvLcDgI9KnaRvOiHExjEF8dGE2FKomhsZh2RG+1m6hqO
        PjnDdoItEKFml8NcAvemTzU=
X-Google-Smtp-Source: ABdhPJyAWUT9Qx6IaPEiO6NNbfDlZ/ldwKY/fd2oZqXneiXZl86tH7XTJm/H/MabUc3v2d8Z3z91Qg==
X-Received: by 2002:a05:6808:1204:b0:325:7ce2:77f6 with SMTP id a4-20020a056808120400b003257ce277f6mr31290299oil.165.1654551204918;
        Mon, 06 Jun 2022 14:33:24 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id ay31-20020a056808301f00b00328c9e63389sm9247352oib.11.2022.06.06.14.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 14:33:24 -0700 (PDT)
Date:   Mon, 6 Jun 2022 16:33:23 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Peter Xu <peterx@redhat.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2 0/2] userfaultfd.2: Update to latest
Message-ID: <20220606213323.xtfx7qpab6dwdqpk@illithid>
References: <20220603173736.62581-1-peterx@redhat.com>
 <7acfdeb8-5dd3-dfe2-5717-b64006281a8f@gmail.com>
 <Yp5YGMFJWLtthc8U@xz-m1.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="uys7qgyyznumndes"
Content-Disposition: inline
In-Reply-To: <Yp5YGMFJWLtthc8U@xz-m1.local>
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URI_DOTEDU autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--uys7qgyyznumndes
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[CC list trimmed since this is solely about English and *roff]

At 2022-06-06T15:40:08-0400, Peter Xu wrote:
> > I think the patch below would improve a little bit the wording (and
> > newlines).  I still have a bit of trouble understanding "When a
> > kernel-originated fault was triggered on the registered range with
> > this userfaultfd".  Did you maybe mean "range registered" instead of
> > "registered range"?
>=20
> Since I'm not a native speaker I don't immediately see the difference
> between the two.

Short answer: I think your existing wording is acceptable.

As a native speaker (but not a trained linguist) I think I can speak to
the subject: both forms are equivalent in this application.  In standard
English, adjectives usually precede the nouns they modify.  Exceptions
include noun phrases borrowed from other languages, like "danse
macabre", word order reversals for poetic dramatic effect ("I sing the
body electric"), or clarity in cases where compound adjectives need to
be applied disjunctively instead of conjunctively, as in "this race is
open to runners fast and slow".  (Any given runner is fast or slow, not
both simultaneously.  In everyday spoken language, this point of clarity
is frequently overlooked, but it's helpful in formal communication.)

In the instant case, "registered range", "registered" is an attributive
adjective modifying "range".  When the order is reversed, it is a
shorter form (but still standard) of "range that is registered", where
the "registered" serves as more of a predicate adjective, albeit in a
restrictive clause.[1]

"Registered" is the past participle form of the infinitive verb "[to]
register", and it is extremely common for participles present and
past[2] to be used as adjectives.  It is not universally the case,
however.[3]

> It's always challenging for me to grasp how you prefer the newlines
> are made, but anyway below changes looks good to me.

If it helps, here is a snippet of recommendations for *roff input from
the GNU Troff Manual.

   * Follow sentence endings in input with newlines to ease their
     recognition.  It is frequently convenient to break after colons and
     semicolons as well, as these typically precede independent clauses.
     Consider breaking after commas; they often occur in lists that
     become easy to scan when itemized by line, or constitute
     supplements to the sentence that are added, deleted, or updated to
     clarify it.  Parenthetical and quoted phrases are also good
     candidates for placement on input lines by themselves.  In filled
     text, spaces and newlines are interchangeable; place breaks where
     it aids your purpose.

   * Set your text editor's line length to 72 characters or fewer.
     This limit, combined with the previous advice regarding breaking
     around punctuation, makes it less common that an input line will
     wrap in your text editor, and thus will help you perceive
     excessively long constructions in your text.  Recall that natural
     languages originate in speech, not writing, and that punctuation is
     correlated with pauses for breathing and changes in prosody.

   * Use '\&' after '!', '?', and '.' if they are followed by space,
     tab, or newline characters and don't end a sentence.

   * In filled text lines, use '\&' before '.' and ''' if they are
     preceded by space, so that reflowing the input doesn't turn them
     into control lines.

What Alex terms "semantic newlines" are a venerable practice in
composition of *roff documents, and have been passed down from Brian
Kernighan of Bell Labs and C programming fame.  Slightly less famously,
he rewrote the Unix Version 7 troff program to be device-independent.

So we can safely say that it's a 40-year tradition, at least.  To some,
however, its age may not recommend it. ;-)  Fault-handling in user mode
is certainly arriving none too soon.  Thank you for your work on it.

Regards,
Branden

[1] https://owl.purdue.edu/owl/general_writing/grammar/that_vs_which.html
[2] See what I did there?
[3] https://english.stackexchange.com/questions/264236/can-any-verbs-presen=
t-and-past-participles-be-used-as-adjectives

--uys7qgyyznumndes
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmKecpkACgkQ0Z6cfXEm
bc72jQ/9FfU0SzLZdv8xUDLPIiNDaJt6VQdtx50HP/jYJ67Wwr6cveNNZwOEpMxw
o5xVbce4EpsZM9HD4bD1XVpvIiDr9PznK12pV57cTkYUWdve0XdaQsuNQQJ4LFcP
XuYhKj4BHQSq0O0KciVLU5D44C4VL9bS3eq4gpiOXfcss8gUx2CfImLKXDY9n9E8
MGRUSj3n9dhBdwg/8AOqL3bJ3FSGFCcbWXtxTUtAsCklnwToPQnT/3BcL5ZukREr
MeG1S2KPwezqrWj/sacaAoniVTIqFFM9EDBMjQNBzpks0Z83/Y0xV9bbKanjHgRq
51Lwg+pNj3uIy2MdRcIiKNrKLAo1HRcn6EdMCf2glP4EAbesCiQOGGz4DtMxEPk/
faa7df2GwkEKv3eYAsg4T4i0r9k3bl/LiuulmyGb5UN36Q96Xwy5i/au6J5YindY
vZ964F1Fx645daoQbBB4W3CPAJpQ4GGlzaVFSyes66UJvilvdIrshbHvNc+1U753
kOdvCNGI833RefJwVzUgo93xXqQ/JXvWKLORk1/W5szQ3WrGUxr1Y7hgEkLfyuvy
8c20qoyDApamZejjQImcDiVlfOapDzNHhNQSWczzoqTT52ZbxYPYZQJ+6HHqAMkW
775KouxeifpflKLPyNmVcWtGydVtGA7oPQm5HR+9d0TQccABVz4=
=TjNl
-----END PGP SIGNATURE-----

--uys7qgyyznumndes--
