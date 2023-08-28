Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 954EA78B2E1
	for <lists+linux-man@lfdr.de>; Mon, 28 Aug 2023 16:22:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229589AbjH1OVe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Aug 2023 10:21:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231672AbjH1OVI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Aug 2023 10:21:08 -0400
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F53BC7
        for <linux-man@vger.kernel.org>; Mon, 28 Aug 2023 07:21:06 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-59288c68eb8so37950967b3.0
        for <linux-man@vger.kernel.org>; Mon, 28 Aug 2023 07:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693232465; x=1693837265;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=em4NUcJdVSVnAA3dlVGsCMXMXSuwUGGiNZAJPQ1nw+0=;
        b=TrASPxbSpHZhs4nvbOtsa4fGcWeaFN3nG/+ct70YvUiUZpCDqctbyP4KeEv/aMbfD5
         jtAELjxqXNegOTtOqkrKVRYQ8kYtXhmvmTU6oaifSI1htxobnJPZCvFmaKEKORD5jlXT
         pLiSeboMPgfFuAVFfvVnPIseA9N/d/GnGN3pEwMjUWsLdBOSnQoIXYN9SAVwTBrL32m3
         h9kzQwdwapzvDo7tiJVtaXMMU+McFPor+VSAvBa/gCHPThJb+Aztck13ArKMn3Ds/LoH
         Lga+QFRgu6HFgc6gQaAExa3+XnxQZ5y0iEhQ0lyQLrm98KO/opxPm9A1W0dGGSsZ977U
         ExEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693232465; x=1693837265;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=em4NUcJdVSVnAA3dlVGsCMXMXSuwUGGiNZAJPQ1nw+0=;
        b=KhyTmXSIyWns+HkbOJ8vXNBggksQYxlyi1qmjj6fU1lBcisUqWCvEK9R/gfslbtP7E
         kTuiD4+IGAZQ6QBrsnEtuKPxdKFnKcb/GXdDwIdWM15DzBDBZunwcSJIW+jGr7avNNlv
         6xxZJV1tTwNUzIEIQhy5EepEDjWgco5acrEhcriEJTRNpffJwPvXTmaP+gmUO5fMqBop
         KR/B+itBJht3m367cMAj4mh3Jm8AUBscg8pUKl0sZjCjMbTkUFvA6AkPxgK8rAbmFHWV
         WYEhBHGt6ZXbZWZlYhPlBrK5P67JxjJyhLlNRiHgbpnu2k0nUo1OUZckLmVmzZ6KWvHl
         B7Hg==
X-Gm-Message-State: AOJu0YyDmlCgpRus9rEhy28KbldCsm7jTtU54ijSEbbuB4cmcU+Oyhd5
        pt3lLIggqUvaD9reCGDTTXs=
X-Google-Smtp-Source: AGHT+IHj2A59H+bOnbIHkeq6AHwLQz9MZ0vT7oN+K2YU7d/8GfTqRxA+Pb6L8LefFvzZSND/ZTGhhA==
X-Received: by 2002:a0d:c045:0:b0:589:8b55:fe09 with SMTP id b66-20020a0dc045000000b005898b55fe09mr25305228ywd.50.1693232465060;
        Mon, 28 Aug 2023 07:21:05 -0700 (PDT)
Received: from firmament.. (h198-137-20-64.xnet.uga.edu. [198.137.20.64])
        by smtp.gmail.com with ESMTPSA id a1-20020a0df101000000b00577269ba9e9sm2166677ywf.86.2023.08.28.07.21.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 07:21:04 -0700 (PDT)
From:   Matthew House <mattlloydhouse@gmail.com>
To:     Florian Weimer <fweimer@redhat.com>
Cc:     Christoph Anton Mitterer <calestyo@scientia.org>,
        Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] open.2: Clarify different POSIX uses of EOPNOTSUPP and ENXIO
Date:   Mon, 28 Aug 2023 10:20:25 -0400
Message-ID: <20230828142038.750693-1-mattlloydhouse@gmail.com>
In-Reply-To: <87ttsk8e8y.fsf@oldenburg.str.redhat.com>
References: <979345cf576e86c42743ea48d797484fc41f8bf7.camel@scientia.org> <87ttsk8e8y.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Aug 27, 2023 at 3:41 PM Florian Weimer <fweimer@redhat.com> wrote:
> To what degree is this dependent on the file system?  Does the VFS layer
> restrict these error codes for anything else?  I don't think so.  Maybe
> strictly speaking, the added wording is still accurate, but the
> conclusion that ENXIO means socket would be incorrect draw, I think.

-ENXIO is returned by no_open() in fs/inode.c, which is automatically set
as the ->open() function (by inode_init_always()) for every inode that
isn't a symlink and doesn't set its ->i_fop to something else. As far as I
am aware, every filesystem uses this fallback only for files of socket
type; all non-socket inodes (except for dummy inodes) set either ->i_fop
or ->i_op->read_link().

Note that this doesn't apply only to Unix domain sockets, but to all
sockets, if one attempts to open() them via their links in /proc/pid/fd.
Open sockets in another process can only be duplicated (AFAIK) using
pidfd_getfd() or SCM_RIGHTS.

Of course, some filesystems also return -ENXIO for their own error
conditions, e.g., opening a pipe for writing with O_NONBLOCK when it has no
readers.

Matthew House
