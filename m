Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB5BE3E3D53
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 02:29:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232475AbhHIA3l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 20:29:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229903AbhHIA3k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 20:29:40 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FA40C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 17:29:21 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id e2-20020a17090a4a02b029016f3020d867so27441296pjh.3
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 17:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/KS7r9YnxhsIhsjHFwwOO7ys8ACT9DBmCS1Pi2K1kII=;
        b=u2c6fhyypM4tseGQOes3IBlAjlFRnIvkUayvY67dyWlxgHZ7Z8YZ5aTauF3HLZMGlW
         qKol60R5FouNTDDk5TW+RIg+vbg8jdCecRq5dtTjV5b+O4BHzlU0qin8w869HEoso+JT
         8hADpG1LrrAh3O5CZAs+3y/C/7NN9qKAi9jZMCP02jnQTL+vh1etFjhytHH4PReGl7Pb
         uR/7ZJzTMd/lKdyVcWcgjgw/Xvad1BZP5AD0/vJaq/0UGnkHwzO1Xfz/slXNzP9gIg4l
         t8GHHqtKZyiWQ0rj2qMti20eoyFuR1KUgtj+KFt+qZ41kzYuF8Vxlf/3WJcvK8O4oegg
         YVnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/KS7r9YnxhsIhsjHFwwOO7ys8ACT9DBmCS1Pi2K1kII=;
        b=HjLNt7FTYy2Scia5amiqhPvdlE6exnxZvROp0oRYMr3HQpTBok4/FP54tmNbtv6jt4
         CisV7ygblFp7aIV9SYHy9rOqW03k0+EM6KtaWQ/iX1an7DuIlf6sf2r3yRpRlv7vlBm4
         urV4h9XJAMtrdyzIlxOS1vTMSjBXdXql6gpW4l5Mjrd5bGNpB7kcYe9hXCJZet8P9xEO
         EYaZVVEWBmgVeqIxKquozP9RWygWSzKqy/uiugJqCVVj7lAeFJyhJXi6m1DXB+npaRtx
         q6CPhhUoV2U6IucdBj+o0m1tUY3ut9F2yh6oFNGQ7L7rP97XIK38paDLRnYyRf7NUZGj
         xPxA==
X-Gm-Message-State: AOAM533dPMElenW7PYXzngfX+d7DgfdkYJxKpCCrYBmFZvLqi2LbzXaI
        TgcnZe2DWh73iJHbvuyylqJyNvWR0dQ=
X-Google-Smtp-Source: ABdhPJz0+eK3/MGDr4C2pXe4D2h3L18LRUOps/okiDOyUUwEbgYfMbaw7mgTM2KqyAm6/qOcTSgrZg==
X-Received: by 2002:a17:903:20c1:b029:12c:4a37:5cbb with SMTP id i1-20020a17090320c1b029012c4a375cbbmr17853693plb.57.1628468960717;
        Sun, 08 Aug 2021 17:29:20 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id y9sm20932911pgr.10.2021.08.08.17.29.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Aug 2021 17:29:20 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Peter Collingbourne <pcc@google.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 02/23] sigaction.2: Document SA_EXPOSE_TAGBITS and the
 flag support detection protocol
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-3-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8156082d-5a61-e240-4954-85e55dcc1e5f@gmail.com>
Date:   Mon, 9 Aug 2021 02:29:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210808084133.734274-3-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Peter and Alex,

On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> From: Peter Collingbourne <pcc@google.com>
> 
> Signed-off-by: Peter Collingbourne <pcc@google.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks for this patch Peter. Applied.

Cheers,

Michael

> ---
>  man2/sigaction.2 | 123 +++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 123 insertions(+)
> 
> diff --git a/man2/sigaction.2 b/man2/sigaction.2
> index 57ad6418c..4bf6f095e 100644
> --- a/man2/sigaction.2
> +++ b/man2/sigaction.2
> @@ -261,6 +261,44 @@ This flag is meaningful only when establishing a signal handler.
>  .\" .I sa_sigaction
>  .\" field was added in Linux 2.1.86.)
>  .\"
> +.TP
> +.B SA_UNSUPPORTED
> +Used to dynamically probe for flag bit support.
> +.IP
> +If an attempt to register a handler succeeds with this flag set in
> +.I act->sa_flags
> +alongside other flags that are potentially unsupported by the kernel,
> +and an immediately subsequent
> +.BR sigaction ()
> +call specifying the same signal number n and with non-NULL
> +.I oldact
> +yields
> +.B SA_UNSUPPORTED
> +.I clear
> +in
> +.IR oldact->sa_flags ,
> +then
> +.I oldact->sa_flags
> +may be used as a bitmask
> +describing which of the potentially unsupported flags are,
> +in fact, supported.
> +See the section "Dynamically probing for flag bit support"
> +below for more details.
> +.TP
> +.BR SA_EXPOSE_TAGBITS " (since Linux 5.11)"
> +Normally, when delivering a signal,
> +an architecture-specific set of tag bits are cleared from the
> +.I si_addr
> +field of
> +.IR siginfo_t .
> +If this flag is set,
> +an architecture-specific subset of the tag bits will be preserved in
> +.IR si_addr .
> +.IP
> +Programs that need to be compatible with Linux versions older than 5.11
> +must use
> +.B SA_UNSUPPORTED
> +to probe for support.
>  .SS The siginfo_t argument to a SA_SIGINFO handler
>  When the
>  .B SA_SIGINFO
> @@ -846,6 +884,91 @@ Triggered by a
>  .BR seccomp (2)
>  filter rule.
>  .RE
> +.SS Dynamically probing for flag bit support
> +The
> +.BR sigaction ()
> +call on Linux accepts unknown bits set in
> +.I act->sa_flags
> +without error.
> +The behavior of the kernel starting with Linux 5.11 is that a second
> +.BR sigaction ()
> +will clear unknown bits from
> +.IR oldact->sa_flags .
> +However, historically, a second
> +.BR sigaction ()
> +call would typically leave those bits set in
> +.IR oldact->sa_flags .
> +.PP
> +This means that support for new flags cannot be detected
> +simply by testing for a flag in
> +.IR sa_flags ,
> +and a program must test that
> +.B SA_UNSUPPORTED
> +has been cleared before relying on the contents of
> +.IR sa_flags .
> +.PP
> +Since the behavior of the signal handler cannot be guaranteed
> +unless the check passes,
> +it is wise to either block the affected signal
> +while registering the handler and performing the check in this case,
> +or where this is not possible,
> +for example if the signal is synchronous, to issue the second
> +.BR sigaction ()
> +in the signal handler itself.
> +.PP
> +In kernels that do not support a specific flag,
> +the kernel's behavior is as if the flag was not set,
> +even if the flag was set in
> +.IR act->sa_flags .
> +.PP
> +The flags
> +.BR SA_NOCLDSTOP ,
> +.BR SA_NOCLDWAIT ,
> +.BR SA_SIGINFO ,
> +.BR SA_ONSTACK ,
> +.BR SA_RESTART ,
> +.BR SA_NODEFER ,
> +.BR SA_RESETHAND ,
> +and, if defined by the architecture,
> +.B SA_RESTORER
> +may not be reliably probed for using this mechanism,
> +because they were introduced before Linux 5.11.
> +However, in general, programs may assume that these flags are supported,
> +since they have all been supported since Linux 2.6,
> +which was released in the year 2003.
> +.PP
> +The following example program exits with status 0 if
> +.B SA_EXPOSE_TAGBITS
> +is determined to be supported, and 1 otherwise.
> +.PP
> +.EX
> +#include <signal.h>
> +#include <stdio.h>
> +#include <unistd.h>
> +
> +void handler(int signo, siginfo_t *info, void *context) {
> +    struct sigaction oldact;
> +    if (sigaction(SIGSEGV, 0, &oldact) == 0 &&
> +        !(oldact.sa_flags & SA_UNSUPPORTED) &&
> +        (oldact.sa_flags & SA_EXPOSE_TAGBITS)) {
> +        _exit(0);
> +    } else {
> +        _exit(1);
> +    }
> +}
> +
> +int main(void) {
> +    struct sigaction act = {0};
> +    act.sa_flags = SA_SIGINFO | SA_UNSUPPORTED | SA_EXPOSE_TAGBITS;
> +    act.sa_sigaction = handler;
> +    if (sigaction(SIGSEGV, &act, 0) != 0) {
> +        perror("sigaction");
> +        return 1;
> +    }
> +
> +    raise(SIGSEGV);
> +}
> +.EE
>  .SH RETURN VALUE
>  .BR sigaction ()
>  returns 0 on success; on error, \-1 is returned, and
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
