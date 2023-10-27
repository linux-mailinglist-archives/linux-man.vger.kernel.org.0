Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D31937D90F6
	for <lists+linux-man@lfdr.de>; Fri, 27 Oct 2023 10:18:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234901AbjJ0ISX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Oct 2023 04:18:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbjJ0ISX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Oct 2023 04:18:23 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98416196
        for <linux-man@vger.kernel.org>; Fri, 27 Oct 2023 01:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1698394654;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=+ouDL3Q+P4kOF4DRXdbPPiLhvDYpBpA3cyTxKCKn6rY=;
        b=aHjwnsGIjbrji7QsyhvZbtcZKm652ld5XKqZCFotS7i35wbyFw05sfSeMuGrHAKXwnLEPF
        ZSoAtxfXf1eSTRQC6e6RqK9SMvAQtV4ENE83a6xnIFcUspnz3O0VMTY3ptVxSZnAHP4bBk
        +JEUeom+1/uz0FdrFreB7O5PVFPldiI=
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com
 [209.85.210.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-654-fWHevJjjM5Chd_uJ407E8g-1; Fri, 27 Oct 2023 04:17:33 -0400
X-MC-Unique: fWHevJjjM5Chd_uJ407E8g-1
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-6b697b7f753so1708840b3a.1
        for <linux-man@vger.kernel.org>; Fri, 27 Oct 2023 01:17:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698394652; x=1698999452;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ouDL3Q+P4kOF4DRXdbPPiLhvDYpBpA3cyTxKCKn6rY=;
        b=USX3NcSFORkKOgXDJ9w7wzeuek4oW2MviQJSuERgBc0kkR+Dgci27SZp60NoohozLs
         aa5IgRYjJjtBdJj6onBwZaK9qNggRkY/4iEyOJhcW7nvxagkxqaHoQUA9ZAQZgFkB/j0
         5oAEkao3RxQlijApnDHalUGQRZaBS8fsoP6geEyJeEpT078LRqF1g80vcGgUw8i2xZX6
         X7IuwI0WsAxWpFeQPqjCCryDkAJDLQTd168c4tFmTqatT8jzGom6QAYceM1UFrfjNTyZ
         IeQWaESNbnrzB8evhBWVza1OdkHO67mUYLBKvbIOY5JNhkEvMKL5g1Lb0ilZkMj/dmQy
         GJFg==
X-Gm-Message-State: AOJu0Yy29dy8aPQAinGZeohqHBj0WloJC6x6lZeiHdNT2sJMJ07+4MHu
        f3hr0/TXhE0siy7WLfMc8UHms/D1k49lWEN0soBj80l64vKMtHzSZ7mlBU//iu8XNJGKk29mUyE
        xcpPEvh9n1QX590ttAcSu0Wec6QI7bJz7bnxQsQl7WVXJ
X-Received: by 2002:a05:6a21:33a4:b0:14c:c393:692 with SMTP id yy36-20020a056a2133a400b0014cc3930692mr2704221pzb.7.1698394651752;
        Fri, 27 Oct 2023 01:17:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTt9SvLiPEi281c5qYNL3fkkUk1SSE30SNu0c6PnpZmbzcGnqGfiaie561R0D3GgR9kSHXh0Ays6TCRh7/8Kw=
X-Received: by 2002:a05:6a21:33a4:b0:14c:c393:692 with SMTP id
 yy36-20020a056a2133a400b0014cc3930692mr2704213pzb.7.1698394651459; Fri, 27
 Oct 2023 01:17:31 -0700 (PDT)
MIME-Version: 1.0
References: <20231025140205.3586473-1-mszeredi@redhat.com> <20231025140205.3586473-3-mszeredi@redhat.com>
 <b69c1c17-35f9-351e-79a9-ef3ef5481974@themaw.net>
In-Reply-To: <b69c1c17-35f9-351e-79a9-ef3ef5481974@themaw.net>
From:   Miklos Szeredi <mszeredi@redhat.com>
Date:   Fri, 27 Oct 2023 10:17:20 +0200
Message-ID: <CAOssrKe76uZ5t714=Ta7GMLnZdS4QGm-fOfT9q5hNFe1fsDMVg@mail.gmail.com>
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Oct 27, 2023 at 5:12=E2=80=AFAM Ian Kent <raven@themaw.net> wrote:
>
> On 25/10/23 22:02, Miklos Szeredi wrote:

> > The mnt.mnt_list is still used to set up the mount tree and for
> > propagation, but not after the mount has been added to a namespace.  He=
nce
> > mnt_list can live in union with rb_node.  Use MNT_ONRB mount flag to
> > validate that the mount is on the correct list.
>
> Is that accurate, propagation occurs at mount and also at umount.

When propagating a mount, the new mount's mnt_list is used as a head
for the new propagated mounts.  These are then moved to the rb tree by
commit_tree().

When umounting there's a "to umount" list called tmp_list in
umount_tree(), this list is used to collect direct umounts and then
propagated umounts.  The direct umounts are added in umount_tree(),
the propagated ones umount_one().

Note: umount_tree() can be called on a not yet finished mount, in that
case the mounts are still on mnt_list, so umount_tree() needs to deal
with both.

> IDG how the change to umount_one() works, it looks like umount_list()
>
> uses mnt_list. It looks like propagate_umount() is also using mnt_list.
>
>
> Am I missing something obvious?

So when a mount is part of a namespace (either anonymous or not) it is
on the rb tree, when not then it can temporarily be on mnt_list.
MNT_ONRB flag is used to validate that the mount is on the list that
we expect it to be on, but also to detect the case of the mount setup
being aborted.

We could handle the second case differently, since we should be able
to tell when we are removing the mount from a namespace and when we
are aborting a mount, but this was the least invasive way to do this.

Thanks,
Miklos

