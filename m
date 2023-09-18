Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 690937A4F2C
	for <lists+linux-man@lfdr.de>; Mon, 18 Sep 2023 18:35:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230247AbjIRQfW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Sep 2023 12:35:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230250AbjIRQfK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Sep 2023 12:35:10 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CD8525234
        for <linux-man@vger.kernel.org>; Mon, 18 Sep 2023 09:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1695053722;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=n7LnswCOaGW4WDijQcX3CV0DLHpeotxjqcHToesSIKc=;
        b=A8aKMrz2VTjzweE9ctBg1fM3lIr2gwI2tU33PhBJPPDvyk1YkHL83EqNis3Ep2E3wVntk8
        hdiCHRoiUfVDSSH2Fa+n7diJZHEAVAJyQoxyo3960kF3ieg6iXtApxtG/Kxx9MLJ5e3rBu
        oUrzYJ+EFthcjeEObwtJIPZUHvD3eaQ=
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-126-yeIJ2WE_MYOOq00x7zz05w-1; Mon, 18 Sep 2023 10:14:14 -0400
X-MC-Unique: yeIJ2WE_MYOOq00x7zz05w-1
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-2766101a6b4so655420a91.0
        for <linux-man@vger.kernel.org>; Mon, 18 Sep 2023 07:14:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695046453; x=1695651253;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n7LnswCOaGW4WDijQcX3CV0DLHpeotxjqcHToesSIKc=;
        b=FhrARICnVC/FzNC3B3Nsr64ev6QeYi7Vfly+Qk2uTjoA3wSxjgXzbxqQuU1wjJ/v4X
         JnPZ4ruIQVlg2CsQf76xXzkkczu1Ap82pOjMq6FvryagOrXvgyYIs+lEkFhf3X3eiVFG
         TfWyKBCcXliztsQ7hczCpONHHyGJJAl+f3dQj3T0OCtDMDTrx51oneLVQTEUUq2kiqHs
         YcdNR2KqX5OJw6d3QcVIQbdWFygL8AMbKNMlcDRRHK5IQ5+xRvN4vv6X8OAgz/zMn9hp
         7w+l3vloAebVmUdG4xD8tD0GFmFNaOo1XcohzUPVzyBjT7fXh77/J/PCaX1ynudWQeP9
         5NWA==
X-Gm-Message-State: AOJu0Yy6Haz2zXYpZMH1aro7bQI5DLJrIeNr4g3Q1NTnYpv1g9Gue8//
        TpaVNnluTZz5P1vX1jVKrS8YrHpHKMTRW7foZ/Xa+NpIlCXmywKVB3L1RV7Y7ZAl2Npr3tErVNm
        6vYhNHM1vXaekVswltCPYchLXDrdPWwZeU0M2
X-Received: by 2002:a17:90a:5d92:b0:26b:374f:97c2 with SMTP id t18-20020a17090a5d9200b0026b374f97c2mr12211751pji.6.1695046453475;
        Mon, 18 Sep 2023 07:14:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7+neZJHpQgC1WYfw1UrSUZAhW6hjsbs2O6fe1ylMjIdtirlIwv14K9Cp0eRu/9VmEWd+vz5/135X2Ocy1Brk=
X-Received: by 2002:a17:90a:5d92:b0:26b:374f:97c2 with SMTP id
 t18-20020a17090a5d9200b0026b374f97c2mr12211725pji.6.1695046453181; Mon, 18
 Sep 2023 07:14:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230913152238.905247-1-mszeredi@redhat.com> <20230913152238.905247-3-mszeredi@redhat.com>
 <20230914-salzig-manifest-f6c3adb1b7b4@brauner> <CAJfpegs-sDk0++FjSZ_RuW5m-z3BTBQdu4T9QPtWwmSZ1_4Yvw@mail.gmail.com>
 <20230914-lockmittel-verknallen-d1a18d76ba44@brauner> <CAJfpegt-VPZP3ou-TMQFs1Xupj_iWA5ttC2UUFKh3E43EyCOQQ@mail.gmail.com>
 <20230918-grafik-zutreffen-995b321017ae@brauner>
In-Reply-To: <20230918-grafik-zutreffen-995b321017ae@brauner>
From:   Miklos Szeredi <mszeredi@redhat.com>
Date:   Mon, 18 Sep 2023 16:14:02 +0200
Message-ID: <CAOssrKfS79=+F0h=XPzJX2E6taxAPmEJEYPi4VBNQjgRR5ujqw@mail.gmail.com>
Subject: Re: [RFC PATCH 2/3] add statmnt(2) syscall
To:     Christian Brauner <brauner@kernel.org>
Cc:     Miklos Szeredi <miklos@szeredi.hu>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-api@vger.kernel.org, linux-man@vger.kernel.org,
        linux-security-module@vger.kernel.org, Karel Zak <kzak@redhat.com>,
        Ian Kent <raven@themaw.net>,
        David Howells <dhowells@redhat.com>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Christian Brauner <christian@brauner.io>,
        Amir Goldstein <amir73il@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Sep 18, 2023 at 3:51=E2=80=AFPM Christian Brauner <brauner@kernel.o=
rg> wrote:

> I really would prefer a properly typed struct and that's what everyone
> was happy with in the session as well. So I would not like to change the
> main parameters.

I completely  agree.  Just would like to understand this point:

  struct statmnt *statmnt(u64 mntid, u64 mask, unsigned int flags);

What's not properly typed about this interface?

I guess the answer is that it's not a syscall interface, which will
have an added [void *buf, size_t bufsize], while the buffer sizing is
done by a simple libc wrapper.

Do you think that's a problem?  If so, why?

Thanks,
Miklos

