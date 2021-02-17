Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A43A931DB0E
	for <lists+linux-man@lfdr.de>; Wed, 17 Feb 2021 14:59:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232707AbhBQN5a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 17 Feb 2021 08:57:30 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:45219 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233272AbhBQN50 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 17 Feb 2021 08:57:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1613570158;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=sHssCXoW26MKl0H65tbZafPYndMpMFcEvAAxr3j6jps=;
        b=ZN8br0t1d1dog7orbfAM9aUt5t7/+6czfvJWOc+0apGc+g9MiHSKPQGm/o2VnvKNF1gJdf
        CTNp9JFLe0iHNW53By4WfprFEBrUsnFePn7pvkz27tiSbd9yySejptIqMQm2h+AgAXF6dV
        rzPDPzhF3lspCFm4UIqyWl0aI/JPdpQ=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-18-tDcWwNW0Mw-eCW7ZIzZYmw-1; Wed, 17 Feb 2021 08:55:56 -0500
X-MC-Unique: tDcWwNW0Mw-eCW7ZIzZYmw-1
Received: by mail-ej1-f69.google.com with SMTP id hx26so8166986ejc.3
        for <linux-man@vger.kernel.org>; Wed, 17 Feb 2021 05:55:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version:content-transfer-encoding;
        bh=sHssCXoW26MKl0H65tbZafPYndMpMFcEvAAxr3j6jps=;
        b=ojAyW/lJfCFnKQNJ9M7oMzEWEaooPDZuvwJZ4dPMjRaIT+HbAeX1SIltma2YHIsbu/
         Q6P4vIU3Z03BUKAyv2s0sEf9WgT4dfw0bJCtXTYNskD56xTowsU4NEHB70PKQWlet+K0
         CB63HdY6eH5r6fyIbc/ICDoBvEqBOeZhCI6NfomzvOm/BIM+bhDSmy5KOf0nXrKQxmzL
         h8zaFCj8/S7RzZJix9iLzwRoHdn3mmmfP1WpXk8S5HBDmf7rrTn0yf365bLa3B3GPJ4Z
         lgYyogCKX+IL+vLJdf1swh809bkGOCu41kB+C2DldP2VejVpZWurbyoUs2Hzh1XotOvH
         hNmg==
X-Gm-Message-State: AOAM531O0x4/cpBXTJuOgCEQ2qokJ/Iui1WyoTti1YtOhy5PesqJFO3z
        wLFnAIOUpW0kz3r/OBBpRc6rq0DcurzhkdnkvjLI+ih7tOoRI2wu28PgxK1GV7epaDRF+m8oR63
        BKVV8zSYgF4YHeGFl+ch8
X-Received: by 2002:a05:6402:1688:: with SMTP id a8mr2414095edv.227.1613570155402;
        Wed, 17 Feb 2021 05:55:55 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxLghKfN7ZeoQG9ek0B9DQSvvIrKGU1Vvw10FnSIyJj8KjgRUuoFr0GjoM/JvJ1fh+4d2vCOg==
X-Received: by 2002:a05:6402:1688:: with SMTP id a8mr2414077edv.227.1613570155217;
        Wed, 17 Feb 2021 05:55:55 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id a23sm1071440ejy.60.2021.02.17.05.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Feb 2021 05:55:54 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
        id 751461805FA; Wed, 17 Feb 2021 14:55:53 +0100 (CET)
From:   Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To:     Joe Stringer <joe@wand.net.nz>, bpf@vger.kernel.org
Cc:     Joe Stringer <joe@cilium.io>, linux-man@vger.kernel.org,
        netdev@vger.kernel.org, mtk.manpages@gmail.com, ast@kernel.org,
        brianvv@google.com, daniel@iogearbox.net, daniel@zonque.org,
        john.fastabend@gmail.com, ppenkov@google.com,
        quentin@isovalent.com, sean@mess.org, yhs@fb.com
Subject: Re: [PATCH bpf-next 00/17] Improve BPF syscall command documentation
In-Reply-To: <20210217010821.1810741-1-joe@wand.net.nz>
References: <20210217010821.1810741-1-joe@wand.net.nz>
X-Clacks-Overhead: GNU Terry Pratchett
Date:   Wed, 17 Feb 2021 14:55:53 +0100
Message-ID: <87r1len6hi.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Joe Stringer <joe@wand.net.nz> writes:

> From: Joe Stringer <joe@cilium.io>
>
> The state of bpf(2) manual pages today is not exactly ideal. For the
> most part, it was written several years ago and has not kept up with the
> pace of development in the kernel tree. For instance, out of a total of
> ~35 commands to the BPF syscall available today, when I pull the
> kernel-man-pages tree today I find just 6 documented commands: The very
> basics of map interaction and program load.

Yes indeed! Thank you for tackling this! :)

> In contrast, looking at bpf-helpers(7), I am able today to run one
> command[0] to fetch API documentation of the very latest eBPF helpers
> that have been added to the kernel. This documentation is up to date
> because kernel maintainers enforce documenting the APIs as part of
> the feature submission process. As far as I can tell, we rely on manual
> synchronization from the kernel tree to the kernel-man-pages tree to
> distribute these more widely, so all locations may not be completely up
> to date. That said, the documentation does in fact exist in the first
> place which is a major initial hurdle to overcome.
>
> Given the relative success of the process around bpf-helpers(7) to
> encourage developers to document their user-facing changes, in this
> patch series I explore applying this technique to bpf(2) as well.
> Unfortunately, even with bpf(2) being so out-of-date, there is still a
> lot of content to convert over. In particular, I've identified at least
> the following aspects of the bpf syscall which could individually be
> generated from separate documentation in the header:
> * BPF syscall commands
> * BPF map types
> * BPF program types
> * BPF attachment points

Does this also include program subtypes (AKA expected_attach_type?)

> Rather than tackle everything at once, I have focused in this series on
> the syscall commands, "enum bpf_cmd". This series is structured to first
> import what useful descriptions there are from the kernel-man-pages
> tree, then piece-by-piece document a few of the syscalls in more detail
> in cases where I could find useful documentation from the git tree or
> from a casual read of the code. Not all documentation is comprehensive
> at this point, but a basis is provided with examples that can be further
> enhanced with subsequent follow-up patches. Note, the series in its
> current state only includes documentation around the syscall commands
> themselves, so in the short term it doesn't allow us to automate bpf(2)
> generation; Only one section of the man page could be replaced. Though
> if there is appetite for this approach, this should be trivial to
> improve on, even if just by importing the remaining static text from the
> kernel-man-pages tree.
>
> Following that, the series enhances the python scripting around parsing
> the descriptions from the header files and generating dedicated
> ReStructured Text and troff output. Finally, to expose the new text and
> reduce the likelihood of having it get out of date or break the docs
> parser, it is added to the selftests and exposed through the kernel
> documentation web pages.
>
> At this point I'd like to put this out for comments. In my mind, the
> ideal eventuation of this work would be to extend kernel UAPI headers
> such that each of the categories I had listed above (commands, maps,
> progs, hooks) have dedicated documentation in the kernel tree, and that
> developers must update the comments in the headers to document the APIs
> prior to patch acceptance, and that we could auto-generate the latest
> version of the bpf(2) manual pages based on a few static description
> sections combined with the dynamically-generated output from the header.

I like the approach, and I don't think it's too onerous to require
updates to the documentation everywhere like we (as you note) already do
for helpers.

So with that, please feel free to add my enthusiastic:

Acked-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat.com>

