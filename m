Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B25E31E96C
	for <lists+linux-man@lfdr.de>; Thu, 18 Feb 2021 13:01:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229656AbhBRL5k (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Feb 2021 06:57:40 -0500
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:46429 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231614AbhBRLjZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Feb 2021 06:39:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1613648221;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=36Nxu7fh3KcvHdksE5HDqIJ3wvrGYUMQwh0wbPL/3hQ=;
        b=Ntj5q//aNzk8/wEfcfaX18aPAKhw5alGvt8GLHYt1odruEcI3QtLTS+DYEEcwO1xyI9C+C
        S4w0foBzj0bVPaQNvVGrceOYyckAnqsBOJE3XIabMhcW5YX/aaeGtkhTMnN/b0h1CY5hO7
        TdDPtp34xGTaUZVlzYvH7Zq4XoMqefc=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-lNaUCJL5O9yfGuDITW96MA-1; Thu, 18 Feb 2021 06:33:12 -0500
X-MC-Unique: lNaUCJL5O9yfGuDITW96MA-1
Received: by mail-ej1-f70.google.com with SMTP id 7so556982ejh.10
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 03:33:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version:content-transfer-encoding;
        bh=36Nxu7fh3KcvHdksE5HDqIJ3wvrGYUMQwh0wbPL/3hQ=;
        b=cErSnzfKh9CnRp/tRjaCSQJkUFJpgQfhji0nRA0P7URD8Hym1+5i0ehSE/uXnWyY+V
         meKQ6B/ua9qiM1bkFCzpI5eZMfLtE8vXaSAXyYiooy1ThY+ebeOTqh42CWIrlneF/p6r
         IMNoofTOTM2JFjJYqV1dUp6aSdVcY7/qvdE9iIg4YuWjM/EInA7IZVbvTEXUlhLLdrZZ
         77NjT32LZyHDCFEt2iLWJb99pwtw3uXa6gjYEFeUGIOVa77X4FH2O4YYBra0e3JBQuJi
         fJGFz1uNBVrCTA2ZaeemGhCMscy36PZ5KbPy/8eRhuFba4gLfNH+y1szGqgV/3M4Z9ag
         Or2Q==
X-Gm-Message-State: AOAM530S+NyGlJc2sWICCu+uqdkmgdlSxciNX2A/dMd8Pv3JlaJPmxih
        Xgd59lTUmRsgfGbvxQGcqgZKHgpHEnAjU/YdsDkiqufJOe+MgNB3fPxVADUB5cSo/6NYWlWP4yP
        Or6haEkQtgJiUyq8RZmYM
X-Received: by 2002:a17:906:4c90:: with SMTP id q16mr3650789eju.49.1613647991258;
        Thu, 18 Feb 2021 03:33:11 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwncoh1x9SnZ4fpM1Vv1Dk74fJ6NcnMvbuj6niroKBejeYqbgEzKQVsxkuh9Jeo8iBmL8Bskg==
X-Received: by 2002:a17:906:4c90:: with SMTP id q16mr3650770eju.49.1613647991115;
        Thu, 18 Feb 2021 03:33:11 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id p20sm701475ejo.19.2021.02.18.03.33.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 03:33:10 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
        id 619B31805FA; Thu, 18 Feb 2021 12:33:09 +0100 (CET)
From:   Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To:     Joe Stringer <joe@cilium.io>
Cc:     bpf@vger.kernel.org, Joe Stringer <joe@cilium.io>,
        linux-man@vger.kernel.org, Networking <netdev@vger.kernel.org>,
        mtk.manpages@gmail.com, ast@kernel.org, brianvv@google.com,
        Daniel Borkmann <daniel@iogearbox.net>, daniel@zonque.org,
        john.fastabend@gmail.com, ppenkov@google.com,
        Quentin Monnet <quentin@isovalent.com>, sean@mess.org,
        yhs@fb.com
Subject: Re: [PATCH bpf-next 00/17] Improve BPF syscall command documentation
In-Reply-To: <CADa=RywykZt_kMVcCJk8N0vm2sJHW2_mKTr9Z8m2rTsnqvinqA@mail.gmail.com>
References: <20210217010821.1810741-1-joe@wand.net.nz>
 <87r1len6hi.fsf@toke.dk>
 <CADa=RywykZt_kMVcCJk8N0vm2sJHW2_mKTr9Z8m2rTsnqvinqA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date:   Thu, 18 Feb 2021 12:33:09 +0100
Message-ID: <87mtw1life.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Joe Stringer <joe@cilium.io> writes:

> On Wed, Feb 17, 2021 at 5:55 AM Toke H=C3=B8iland-J=C3=B8rgensen <toke@re=
dhat.com> wrote:
>>
>> Joe Stringer <joe@wand.net.nz> writes:
>> > Given the relative success of the process around bpf-helpers(7) to
>> > encourage developers to document their user-facing changes, in this
>> > patch series I explore applying this technique to bpf(2) as well.
>> > Unfortunately, even with bpf(2) being so out-of-date, there is still a
>> > lot of content to convert over. In particular, I've identified at least
>> > the following aspects of the bpf syscall which could individually be
>> > generated from separate documentation in the header:
>> > * BPF syscall commands
>> > * BPF map types
>> > * BPF program types
>> > * BPF attachment points
>>
>> Does this also include program subtypes (AKA expected_attach_type?)
>
> I seem to have left my lawyerly "including, but not limited to..."
> language at home today ;-) . Of course, I can add that to the list.

Great, thanks! :)

-Toke

