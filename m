Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02B926B685C
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 17:44:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230511AbjCLQok (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Mar 2023 12:44:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229640AbjCLQoj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Mar 2023 12:44:39 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BAB927D72
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 09:44:37 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id c11so7901786oiw.2
        for <linux-man@vger.kernel.org>; Sun, 12 Mar 2023 09:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678639476;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LDZL2euZY0KhHE3WnPIgYlpLIhIYF5OSxzfYBJyDmYM=;
        b=QNUWZ1iPExNG4nK/iAB0qcjREPac+LcpW1bklcsyRQo3HH2jXCbmb3IMZD1C8iVY7B
         RE3JuVnh98+98W4ipriMCLSFZbXCe2qLGrHvY4WUABRXINryWAkU2dtMRS3O9EzeqCyV
         NtXSWkf66RUjIzUrwAxDvn/09Glx8xrwhZxOpkoIO1oyAozOJxie0TNPSEHsvIHTBmhv
         W/xfcuXjJq8RcHadTOp8C5KXc7/IbocYHC/P5Bj3pScCqCyTo3JjZDOkAXKWSd7yBGm2
         MUgo/ztqxN4kUlrM+qYLRXMHs49LA1kggdPRs5xlquRXacHNVrNAjY7PsLAqAFbCnRUh
         D7JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678639476;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LDZL2euZY0KhHE3WnPIgYlpLIhIYF5OSxzfYBJyDmYM=;
        b=zSrrcHmv1AP30jGxTOaDf90oAjIYpqbjh32velv0M2/X5Ur08Hb3Ud5rk4IGtH3PcO
         if1QG/iVHYsxYy36ZJrcqzfEMaF8eF3XaNAW6cJDeTGQ4aFndulQmv1AhaTPdrwB0HYe
         HrrrPkocgz9OoEBzLHqSbR1UV2Jw76F09Cd2pHxgDpN6rDrJzA+Xn5HJ43YQYfwCqeOQ
         ZJjhL2dFS8EOwGW2PKzSsgu2pJNWkfILIlHCRWFmH+xGqQoqxgo9cdwoiYfkW3D7QeMA
         0BSt1BFAmvgjggBnmXY1ezMgirpu3CXZez7tXjUXXmz+VbUlcLvKHIYDwsRv9lLCD1W0
         lWyg==
X-Gm-Message-State: AO0yUKWsjoSlxrL7KrvmPd+zb1bcxkfDuYUwHubvIq7CH5Nz4mGRsly8
        fPu+AJZFEdvOAj/VmHhyRHS2EclGp4U=
X-Google-Smtp-Source: AK7set8768J/ooP4HozCHCSj3HsKBz6b4FPHSpv2GBeXKStImuoIrECEZGNJEkWb2rVbCbioHuU9ew==
X-Received: by 2002:a05:6808:274e:b0:383:fa46:af3e with SMTP id eh14-20020a056808274e00b00383fa46af3emr13402250oib.44.1678639476596;
        Sun, 12 Mar 2023 09:44:36 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id h7-20020a4a4207000000b00525273db47fsm2209126ooj.46.2023.03.12.09.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 09:44:36 -0700 (PDT)
Date:   Sun, 12 Mar 2023 11:44:34 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        groff@gnu.org, Helge Kreutzmann <debian@helgefjell.de>
Subject: Re: [PATCH] man7/: ffix
Message-ID: <20230312164434.ga3hkxnszly7agk5@illithid>
References: <20230312110203.3898-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="iahdwr6hkawtggm5"
Content-Disposition: inline
In-Reply-To: <20230312110203.3898-1-alx@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--iahdwr6hkawtggm5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

Short answer: take the patch.  :)

At 2023-03-12T12:02:04+0100, Alejandro Colomar wrote:
> Should I apply this patch?  I'm not sure if the variable part should
> be bold because it's part of a heading or roman because it's variable
> part within italics.  How would you format it?

> diff --git a/man7/time_namespaces.7 b/man7/time_namespaces.7
> index 708099934..8c31b5f95 100644
> --- a/man7/time_namespaces.7
> +++ b/man7/time_namespaces.7
[...]
> -.SS /proc/\fIpid\fP/timens_offsets
> +.SS \fI/proc/\fPpid\fI/timens_offsets\fP
[...]
> diff --git a/man7/user_namespaces.7 b/man7/user_namespaces.7
> index 6647b02bf..737dd54ad 100644
> --- a/man7/user_namespaces.7
> +++ b/man7/user_namespaces.7
[...]
> -.SS The /proc/\fIpid\fP/setgroups file
> +.SS The \fI/proc/\fPpid\fI/setgroups\fP file

Long answer:

This is one of those cases where man(7) isn't expressive enough to suit
me, for precisely the reason you identify.  Because we largely don't
have semantic tags, we can't mark "pid" semantically and let the context
determine the styling.

I prefer the former to the latter, and would apply the patch.  In groff
1.23.0 (which still doesn't have its final tag :( ), the man(7) macro
package remaps the `I` (italic) style to `BI` (bold+italic) if it is
available and the font being used for (subsection) headings is
configured to be bold.  (The heading font has been configurable via the
`HF` string since groff 1.19, February 2004.)

So what will happen here, in groff 1.23 and the future, is that the file
name will be rendered mostly in bold italics, but the variable portion
will appear in upright bold.

However, if it were my man page, I might recast the headings entirely to
describe the files--or rather their purpose--in English, avoiding both
the use of escape sequences and concern with typeface changes.

.SS "Setting offsets in time name spaces" \" yes, name spaces (sic)
.SS "Enabling processes to change effective group membership" \" ?

But I will understand if you want to stick with the proposed patch, for
two reasons.

(1) Adopting my proposal means getting into another word-division fight
    with C programmers (perhaps influenced by C++ keywords) who port
    their identifier typography directly into English without
    alteration, as also discussed on linux-man in the past day or so;
    and

(2) I've inverted the discursive orientation of the material.
    Generally, I think (sub)section headings in a man page should be
    _broadly categorical_ or should address themselves to operations a
    user wants to perform, or tasks they want to achieve.  Another
    popular approach, seen here, is to use the man page as a sort of
    index for file system objects, so people reading the man page in
    full or trying to answer the question "what does this file do?" will
    be more readily enlightened.

    Both of these are legitimate purposes, and the latter is easier to
    write, which I think partly explains its popularity among those who
    are tasked by others with writing documentation and would prefer to
    get back to hacking.  If your new kernel subsystem creates
    /proc/$$/foo/{bar,baz,qux} for every process, you can proclaim your
    section 7 man page "done" once you've written a paragraph for each
    of these items.  Your manager will eagerly sign off so as to get you
    back to more "productive" work, like performance tuning so that they
    can in turn try to impress their own bosses with a chart on a
    PowerPoint slide.  (Bonus points if they characterize the shape of
    _any_ curve as "exponential".)

    And it is better than nothing.  But as a rule I think it is better
    to present a catalog in a tagged list, and spend time thinking about
    what it is that conceptually unifies that list.  Doing so tends to
    lead to an introductory paragraph preceding the list that makes it
    clear to everyone why the list is present and when people should
    care about it.  Observe how many man pages pass immediately from a
    (sub)section heading to one of these lists.[1]  This is often a
    tell-tale sign that the unifying thinking, the writer's craft of
    getting above the worm's-eye view of technical detail, has been
    omitted.  I won't claim that groff's own man pages are perfect in
    this respect.  They never will be, but maybe I can improve them
    further given another five years...

Regards,
Branden

[1] (groff war story)

    As I recall, a few years ago Ingo Schwarze once lobbied me to take
    out the "Options" sections of groff's section 1 man pages using a
    similar argument, claiming that options should be motivated and
    discussed within the "Description" section in a more organic manner.
    (And I did in fact change our nroff(1) page to do this, to test out
    his advice and because GNU nroff is a wrapper--nearly all its
    options are synonymous with groff(1) or troff(1) options).  He's not
    wrong, but because GNU programs tend to have many options (also a
    defect, in his view and others', like Rob Pike[2]) and because man
    pages are so frequently consulted to determine what a command option
    is for, I decided I could not dispense with them.

    Another reform to groff's man pages that I undertook was to begin
    shifting more discursive material earlier in the page.  A popular
    approach to man page organization for section 1 and 8 pages is to
    have a single paragraph of overview followed immediately by the
    "Options" section, which promptly starts referring to technical
    details, sometimes obscure ones, that the reader must already
    comprehend or which are not properly presented until later in the
    document.  As you may suspect, I dislike that.  Ingo felt that if I
    was going to have an Options section at all, I should keep it up
    high so it would at least start on the first pager screen--I think
    this was meant for the convenience of the expert reader.  But I
    think this approach sacrifices too much accessibility to the
    learner.  One should be able to read a man page linearly and feel
    one's understanding of the topic building.  Some people would retort
    that man pages are meant as a reference, not a tutorial.  My counter
    is that while they generally aren't tutorials, terming one's page a
    "reference" does not excuse one from covering the domain-specific
    knowledge that another needs to acquire to competently use the
    software at issue.  I think the boot(8) and crash(8) pages from the
    V7 Unix manual (1979) are examples, from an esteemed source, of how
    discursive--nigh-on tutorial--a man page of good reputation can get.

    My opinion is that the reader who is already familiar with the
    page's material can type "/Options" in their pager to navigate there
    if they are in a hurry.  Alternatively, thanks to Deri James, they
    can view man pages as PDFs, open up the navigation pane of their PDF
    viewer, and click on "Options".  A good conversion to HTML enables
    this, too.

[2] http://harmful.cat-v.org/cat-v/

--iahdwr6hkawtggm5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmQOAWoACgkQ0Z6cfXEm
bc6PBA//U4Y+smk7KJMPjjta0Hm1+2Q/PgF4yGCjnVD08UdgN18Mb+GPcxgM1lnt
X0RqQyRsCyO0Ffj6H529vaw1Ebm9wLWLqlRWDXu/i810UKULq0zPX/UPzaIaTfX1
1Z8jmYSZVjk5i3bz/ulCVOnZVaCHpArLdo7qc8l9rUqiyN3X10W2YTJhSZWv4jSQ
oh55VemysW3AS+lKPzjYC8IlOMlrrrQ8yhTjNEcHGEqduQPQUBEtXJpxAgVMVZYa
T3SCe39CQbjWEeXi+EgUz+UL7cSCW+kvBJ3w65XUPP2QvpBzPCXeJVQqTjTwQq90
XSVnA2xBS720t5PzYN0ie4val6PJ9XUWBHOdxmfSF4aG3vPvbpRsAEhHKAPnfIZp
Kj6H075G2OrWC+iNUGkxW1opY2HB3I3QoM9/r3FJPQl9MQotRPqLdD+YmCM2DAv6
HFUttycySO1+nA2h2nMIMhLLHy/jGajQdKg0ChpXX8CEz/81kaHfJP4y701o7sKj
Vo9hrsM0+GpX5iVSaeFbSl+pW0qX3qhmWe/64NV/A9SyxDCIC2434tnEUPa3x2q/
Cda2qnX515eFCZqp3IfqenCx99SQKJCafzHk7bAofe+86YFCfdF9EZmvfTNWBXhZ
WbkbEOGCQ+zdeJ973A5mXtO3JGh5p+LVfnNzxVob2timHhLllHM=
=i1in
-----END PGP SIGNATURE-----

--iahdwr6hkawtggm5--
