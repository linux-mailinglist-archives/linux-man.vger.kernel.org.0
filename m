Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E06B357BF4B
	for <lists+linux-man@lfdr.de>; Wed, 20 Jul 2022 22:40:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229941AbiGTUkk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jul 2022 16:40:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229940AbiGTUki (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Jul 2022 16:40:38 -0400
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 459A050069
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 13:40:37 -0700 (PDT)
Received: by mail-qk1-x72f.google.com with SMTP id m16so10367305qka.12
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 13:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=isovalent-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XXxUxKJ+TjPRQFAn6WkkOLf6VWAzRpc0cXsoIGbzV00=;
        b=Z2M6NOBq/JhmKEZ0lYvY/Aw1hggf+++4usrMKU1zGnmiq5gENzblFKze/kv+TsTrpJ
         f/N9EdBv4yC6uW/wNWsnkYlIpZFbmUJfPfAFh2oB7g3UYH2INrdCVg83xuv0BxHNSyON
         9UmESQqgT2OLvGBiEw0B4w6FLKvqHOEHCWvmXQlhY2rZCWqGNTpazXMAmQlNwfoL0dIN
         XdJG4hBHXFjBAUpkIs1W5eRKJyJH976LJ8QKPR9cjTm9azkBvCXWANCD3oB0Tbc9SRT2
         OY8HJ2iV9Ptis+3bAVun5t78cun/Q8S+m175DrDJ2v8+vdbUishpLbGvo4MgJIIfYnWT
         xF7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XXxUxKJ+TjPRQFAn6WkkOLf6VWAzRpc0cXsoIGbzV00=;
        b=dDxtzicibHAIfZx8m31lDd0xOSpiZ1AVIX7nVSjyX9JaamZQC/vKEPCXPh59OwREr/
         yTQQuR8Rh4L+qSV1sLR3XQVuN64CzbkLTKFxY7tf5CjrvV0PPIDcvpoB1Kt63Z5RuHIb
         +yWdnXJ6e2dJaVvg6eYptZiCwJn1KWZDunq6NP3AV707i4uuU8Mxezx4UxOAyvXtEAyK
         A5LfxcrQaSL8nwBIlnivY4VQV9vWygEeD5xJ44GGoDuQL4mEVL7TvIZOYuEshkRYlZV3
         /nZp9gOaF1Wi5zoZlHRcYtuHByBFtNT0q9oVzonJ5LVJ9hAiyzuhsbr5b7s8E/BCxfaI
         ud+w==
X-Gm-Message-State: AJIora/aWo/BG97+6CkbDkSWzWuOouFyyrf6HWYRaz7TZPOqdcbh+DCt
        xff8gkOe4eAsWgTfikacmDOncRHfar+qwo90l+1owA==
X-Google-Smtp-Source: AGRyM1t+jvgWXoY9DcQFTqJlCrlYLLummUwXvo5tafvXpal2ktIUUnJZQgis2E6l7EqTVXriujSWBMEmWbP4rI8uKOQ=
X-Received: by 2002:a37:af46:0:b0:6b5:5da1:1bba with SMTP id
 y67-20020a37af46000000b006b55da11bbamr26617718qke.545.1658349636403; Wed, 20
 Jul 2022 13:40:36 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com> <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
 <6310b542-3a92-e072-b369-25e370036626@gmail.com>
In-Reply-To: <6310b542-3a92-e072-b369-25e370036626@gmail.com>
From:   Quentin Monnet <quentin@isovalent.com>
Date:   Wed, 20 Jul 2022 21:40:24 +0100
Message-ID: <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>
Subject: Re: Update bpf-helpers(7) man page
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Rumen Telbizov <rumen.telbizov@menlosecurity.com>,
        linux-man <linux-man@vger.kernel.org>,
        Daniel Borkmann <daniel@iogearbox.net>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 20 Jul 2022 at 10:50, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> Hi Rumen,
>
> On 7/19/22 19:21, Rumen Telbizov wrote:
> > Hi Alejandro,
> >
> > Thanks for following up on this.
> > Quentin will send you the script these days for you to rerun.
> > However, I'm wondering if there's a way to run it automatically when a change is
> > detected or otherwise without needing manual intervention? This way
> > the published
> > page will not get out of date. I am not sure what that mechanism might be but
> > just a thought.
>
> I'm not sure an automated mechanism would be easy to set up.
> But, I'm planning to add a RELEASE file to the man-pages repo with
> instructions to make a release.  I can add there a step that reminds to
> refresh the bpf-helpers(7) manual page before every release.

Hi Alejandro, Rumen,

Thank you Rumen for raising this. Yes, the bpf-helpers(7) man page is
generated from a script: it's scripts/bpf_doc.py under the kernel
repository [0], which parses the UAPI header at
include/uapi/linux/bpf.h [1] to generate a rST file that can be
converted to a man page. From the root of the Linux repository, one
can generate and read the manual page with the following command:

    $ ./scripts/bpf_doc.py helpers | rst2man | man -l -

(Note that the name of the script has changed since man-page commit
53666f6c3045.)

Given that the script is maintained in the Linux repository (it is run
through the BPF CI [2], and it is also used to generate a C header
that is shipped along with libbpf [3]), I would recommend against
copying it to the man-pages repository, so that we avoid getting two
copies out-of-sync. It is probably best to pick it up from the Linux
repo (since the UAPI header is also required anyway) when regenerating
the page.

If automation is not doable, I would be very happy to have someone
running this step before each project release.

Many thanks,
Quentin

[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scripts/bpf_doc.py?h=v5.18
[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/uapi/linux/bpf.h?h=v5.18#n1526
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/tools/testing/selftests/bpf/Makefile.docs?h=v5.18
[3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/tools/lib/bpf/Makefile?h=v5.18#n159
