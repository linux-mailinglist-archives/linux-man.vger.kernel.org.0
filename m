Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BFA47DB5C7
	for <lists+linux-man@lfdr.de>; Mon, 30 Oct 2023 10:07:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232420AbjJ3JHZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Oct 2023 05:07:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231467AbjJ3JHZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Oct 2023 05:07:25 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CB4EAF
        for <linux-man@vger.kernel.org>; Mon, 30 Oct 2023 02:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1698656792;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=y0atX0+sSSXblFLFWLmbV5ArNow5LoKvzRBMtZdLmQk=;
        b=AggfYkFE20GlBuawllO5ZB4I+LKFFFKPUq/NF+GXc8I5i5f9pi830IdWMZAtciqApXaA5m
        ea9OBsgIlQdJBUf0lRMJV6FOXrHfsSXQZbdPdUvowt4SptHRtcfKrvZuDoGQ8y2RERIHxI
        g3heZGPXu2M34kFdfexJwPBeSFAhmR0=
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com
 [209.85.210.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-219-SSnF_OXuOXSwxsRxAfGjrQ-1; Mon, 30 Oct 2023 05:06:30 -0400
X-MC-Unique: SSnF_OXuOXSwxsRxAfGjrQ-1
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-6c0362a50bbso2906265b3a.2
        for <linux-man@vger.kernel.org>; Mon, 30 Oct 2023 02:06:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698656789; x=1699261589;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y0atX0+sSSXblFLFWLmbV5ArNow5LoKvzRBMtZdLmQk=;
        b=bkjgHbSpIwXdXJXqs8cJ2mCuYS/+ZvSRnQthdx3eHFgMnCxHyPHiUefUbR5zc2F8fZ
         9NjYjg8XVeVuJDHBCFENwyuPsEDFZJStGdm8G+z68vr6Ch5j3fWwaGBdklsW79zJXURi
         8cH95zJJdlB7PCpEcd2o3Cd5Fec35nV/2QyjNf0TzBebgunYqZivrQV0WUZ+QJ0N40jz
         iSCI+prvzNFZoRF6q2R5i+WI5nVABltJ649JFFUyPK6001ngGhsG9brQjGqmPKA9QfdA
         EOTwPnDEsrJMWR3oZNr6W6LenJhrCbhWeY/9kHsQwxvObhO5VDdHmjmZ3sYZTe/5lN0V
         LSWQ==
X-Gm-Message-State: AOJu0YwXCSRDvemgCA6nqtbN1spDxIRXNTyS01tKuDsSdAcVnZoqLkYj
        BmRyce1dhvrJrBFOqF16GpWhAzm6h8oSb45YOqJ1uTE5BU0sXS+Er4IrjrNoX6bhKhjguvJYIZc
        Z9KVl/NGmd7gNbOguA89d/xdvoXDbyxESIK6e
X-Received: by 2002:a05:6a20:7d8a:b0:171:a8bc:74b2 with SMTP id v10-20020a056a207d8a00b00171a8bc74b2mr8574561pzj.7.1698656789548;
        Mon, 30 Oct 2023 02:06:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGgI6VSfuoAE2RQro4OApKzTh51pBH7xn4E0oXjcNFufoZcmb5hUYyAZ9Iwz2uBJUgmSjdLrxau1bmihHZXQhg=
X-Received: by 2002:a05:6a20:7d8a:b0:171:a8bc:74b2 with SMTP id
 v10-20020a056a207d8a00b00171a8bc74b2mr8574537pzj.7.1698656789216; Mon, 30 Oct
 2023 02:06:29 -0700 (PDT)
MIME-Version: 1.0
References: <20231025140205.3586473-1-mszeredi@redhat.com> <20231025140205.3586473-3-mszeredi@redhat.com>
 <b69c1c17-35f9-351e-79a9-ef3ef5481974@themaw.net> <CAOssrKe76uZ5t714=Ta7GMLnZdS4QGm-fOfT9q5hNFe1fsDMVg@mail.gmail.com>
 <c938a7d9-aa9e-a3ad-a001-fb9022d21475@themaw.net> <dfb5f3d5-8db8-34af-d605-14112e8cc485@themaw.net>
 <cbc065c0-1dc3-974f-6e48-483baaf750a3@themaw.net>
In-Reply-To: <cbc065c0-1dc3-974f-6e48-483baaf750a3@themaw.net>
From:   Miklos Szeredi <mszeredi@redhat.com>
Date:   Mon, 30 Oct 2023 10:06:18 +0100
Message-ID: <CAOssrKdvTrPbnicFTiCiMNhKfdfwFEv4r_y1JeEe+H5V6LpkKg@mail.gmail.com>
Subject: Re: [PATCH v4 2/6] mounts: keep list of mounts in an rbtree
To:     Ian Kent <raven@themaw.net>
Cc:     linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-api@vger.kernel.org, linux-man@vger.kernel.org,
        linux-security-module@vger.kernel.org, Karel Zak <kzak@redhat.com>,
        David Howells <dhowells@redhat.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Christian Brauner <christian@brauner.io>,
        Amir Goldstein <amir73il@gmail.com>,
        Matthew House <mattlloydhouse@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Oct 30, 2023 at 6:45=E2=80=AFAM Ian Kent <raven@themaw.net> wrote:

> Is fs/namespace.c:iterate_mounts() a problem?
>
> It's called from:
>
> 1) ./kernel/audit_tree.c:709: if (iterate_mounts(compare_root,
> 2) ./kernel/audit_tree.c:839:    err =3D iterate_mounts(tag_mount, tree, =
mnt);
> 3) ./kernel/audit_tree.c:917:        failed =3D iterate_mounts(tag_mount,
> tree, tagged);
>
>
>  From functions 1) audit_trim_trees(), 2) audit_add_tree_rule() and
>
> 3) audit_tag_tree().

So that interface works like this:

 - collect_mounts() creates a temporary copy of a mount tree, mounts
are chained on mnt_list.

 - iterate_mounts() is used to do some work on the temporary tree

 - drop_collected_mounts() frees the temporary tree

These mounts are never installed in a namespace.  My guess is that a
private copy is used instead of the original mount tree to prevent
races.

Thanks,
Miklos

