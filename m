Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3E3D29D991
	for <lists+linux-man@lfdr.de>; Wed, 28 Oct 2020 23:57:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389855AbgJ1W4J (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Oct 2020 18:56:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389704AbgJ1W4J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Oct 2020 18:56:09 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3CC3C0613D1
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 15:56:08 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id j5so361152plk.7
        for <linux-man@vger.kernel.org>; Wed, 28 Oct 2020 15:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6zGOuhTIRZSvVyxx3m4aE8CgCO2YW8w7ueb9xYPds3c=;
        b=SEdMz9fsLWNQgMVzf4o0RAPD/AcIAPbuNHJfefzMBnk/O9d9g6sgbDmqXfCec5Xzxj
         caBrjlmHD8fifIVTuqhHxUI5XhRh2T890Af5tLexqvSiZ266TQyAe+pQq/Xy1hRXF9YR
         +U+lTkSiEjRN3SU9Xq1u0+VGj18uqELgouFRA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6zGOuhTIRZSvVyxx3m4aE8CgCO2YW8w7ueb9xYPds3c=;
        b=GjqqafRT+ELtaRaXboOn6A3nIauV9wcb61ymfExb3UTYHl2PEJMZJNAspkXbWcKZrX
         x0e1HfCKlg0R0TBBRPdLfRVnjNOoyPOE9cMTHoRibh27FnHDc43U++m0Qwnri/pu6mkh
         7n0c1/7mKiAzbJO4US4gqQP8nf6XkU1CthJBE2EzOVmBWefwnTlF3vwQlUz8bZjyDi7w
         fA2gh2xzaga1QZutvTy+0KetT36WBdvP4wk9UmlQSRtj9aJxwP9Rofj6i69rb1S9gQYn
         aJIYGk+Dy4phD/vWvpgBp/kf3K5Z/047RMiw/DJ5kJz7iQDDWBAdUCb4/Cn0P/TtC5EB
         q8+w==
X-Gm-Message-State: AOAM531QKGUTv+BP+SlDZek8BizO0gTltniZPA7EduJgAbTNqIHS4yaW
        sZijB5rZGVDBRnAF224evTMbUQ==
X-Google-Smtp-Source: ABdhPJwAExtMg0Y9nbbQflCfUuQOXDWjgWSEdOk1MQhIgdQjFdwVeqs8tTy00tz6CV1C4vksZxX49Q==
X-Received: by 2002:a17:902:b90c:b029:d6:868d:f566 with SMTP id bf12-20020a170902b90cb02900d6868df566mr913093plb.2.1603925768287;
        Wed, 28 Oct 2020 15:56:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m129sm637972pfd.177.2020.10.28.15.56.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 15:56:07 -0700 (PDT)
Date:   Wed, 28 Oct 2020 15:56:06 -0700
From:   Kees Cook <keescook@chromium.org>
To:     Jann Horn <jannh@google.com>
Cc:     Tycho Andersen <tycho@tycho.pizza>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Sargun Dhillon <sargun@sargun.me>,
        Christian Brauner <christian@brauner.io>,
        linux-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Aleksa Sarai <cyphar@cyphar.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Will Drewry <wad@chromium.org>, bpf <bpf@vger.kernel.org>,
        Song Liu <songliubraving@fb.com>,
        Daniel Borkmann <daniel@iogearbox.net>,
        Andy Lutomirski <luto@amacapital.net>,
        Linux Containers <containers@lists.linux-foundation.org>,
        Giuseppe Scrivano <gscrivan@redhat.com>,
        Robert Sesek <rsesek@google.com>
Subject: Re: For review: seccomp_user_notif(2) manual page
Message-ID: <202010281553.A72E162A7@keescook>
References: <45f07f17-18b6-d187-0914-6f341fe90857@gmail.com>
 <20200930150330.GC284424@cisco>
 <8bcd956f-58d2-d2f0-ca7c-0a30f3fcd5b8@gmail.com>
 <20200930230327.GA1260245@cisco>
 <CAG48ez1VOUEHVQyo-2+uO7J+-jN5rh7=KmrMJiPaFjwCbKR1Sg@mail.gmail.com>
 <20200930232456.GB1260245@cisco>
 <CAG48ez2xn+_KznEztJ-eVTsTzkbf9CVgPqaAk7TpRNAqbdaRoA@mail.gmail.com>
 <202010251725.2BD96926E3@keescook>
 <CAG48ez2b-fnsp8YAR=H5uRMT4bBTid_hyU4m6KavHxDko1Efog@mail.gmail.com>
 <CAG48ez2OWhpH3HHUJSrAmokJ8=SVwKrmQMSw0gEbTJmKE4myCw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAG48ez2OWhpH3HHUJSrAmokJ8=SVwKrmQMSw0gEbTJmKE4myCw@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Oct 26, 2020 at 11:31:01AM +0100, Jann Horn wrote:
> Or I guess we could also just set O_NONBLOCK on the fd by default?
> Since the one existing user is eventloop-based...

I thought about that initially, but it rubs me the wrong way: it
violates least-surprise for me. File descriptors are expected to be
default-blocking. It *is* a special fd, though, so maybe it could work.
The only case I can think of it would break would be ioctl-loop case
that is already buggy in that it didn't handle non-zero returns?

-- 
Kees Cook
