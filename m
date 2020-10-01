Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC16E27FE19
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 13:07:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731548AbgJALHr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 07:07:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731134AbgJALHq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 07:07:46 -0400
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com [IPv6:2607:f8b0:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB6DBC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 04:07:46 -0700 (PDT)
Received: by mail-il1-x143.google.com with SMTP id t12so5680849ilh.3
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 04:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gbI9ychfTJ19/3dgtrUqtQsig6XNA25kgEL/GEXdM84=;
        b=IZ1WAISmM/9++SuLY3/fVUEYIXpBwcmsgGM4bRvQQXVVtQZ2oztNOn0+az1glQM64B
         QSqbYTyjoiluYuH1UEFkAQ3uS3pqXvezCsvmGuG+lDo4karIB3n+QZQWa8pqwCj4DVLX
         ueEnONUfoch2Z51tlOo8JWp/mUh3MsxskptcBckVGmScHLN+oAxiYaOau+neUK1KWzPC
         Gcw7kf7oN5fNtJFE7M2DlEct1u8Ttlb4PVtlPu1YWQfNyzHHDHLMInD+IQAQ8RAOZR72
         3INscFTeORXFhjgE5u1V5ObO15tPmZBFp8/ok0mVyx5mxugsno8M/raPj+3dd2gNC5EN
         317w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gbI9ychfTJ19/3dgtrUqtQsig6XNA25kgEL/GEXdM84=;
        b=X8rfXKlIwTF5Hh2/KL7yNr5kehh9oh+u2Llsu+kmOp3wlpILxP/oSQtaI+NdiNUoPn
         ELVwIZ6WkM2zg7bfRYeHTrBvtNbbIhk6OGE8NW4hbpH9cukcp/3wfIrPWtgR0SldbDT3
         IvrBetT3TmCRvril4r/fsbUxejnBW/FXx14naUzM8rG7K6LMW1qBh3s4D+c799vY8+eU
         mS61oUz2RsdDk8zL5voDeOTanstb4arMaUpNjCEIVFzHiyfunrjBxH07/wa79EjcFWjq
         p/qgD4ljmxWYaQCVG7oKo5qti6+JyPVtMeTP1+GgJh43u7gBEEJobZN+U1kSNlELka4a
         ebTQ==
X-Gm-Message-State: AOAM531dL3JjXlZR6XeCTIwqLOUyDYa0EbgcZLPr/in1jArgHXp+Sebi
        vwdeXGRiQsNVwwL1DD/e2on7wNXl7vw7iRg0tCDFfnPn
X-Google-Smtp-Source: ABdhPJyr1DAijnSiWED/jV+mmA3tgvvQYbFq3/pbxnLkiFGed43tuiA5WPu2bbAYiHITEPa4Pq5TPJelDSq6b7yPm6o=
X-Received: by 2002:a92:d68b:: with SMTP id p11mr1765917iln.59.1601550466082;
 Thu, 01 Oct 2020 04:07:46 -0700 (PDT)
MIME-Version: 1.0
References: <20201001101559.77163-1-colomar.6.4.3@gmail.com> <20201001101559.77163-6-colomar.6.4.3@gmail.com>
In-Reply-To: <20201001101559.77163-6-colomar.6.4.3@gmail.com>
From:   Jonathan Wakely <jwakely.gcc@gmail.com>
Date:   Thu, 1 Oct 2020 12:07:35 +0100
Message-ID: <CAH6eHdQPvsfHcsWXNKXZsZcvWkmH6JOvcAivVFjq+HJEctG62w@mail.gmail.com>
Subject: Re: [PATCH 05/16] system_data_types.7: Add int_fastN_t family of types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 1 Oct 2020 at 11:25, Alejandro Colomar via Gcc <gcc@gcc.gnu.org> wrote:
>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 76 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 76 insertions(+)
>
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index a301c2309..07de6417f 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -329,6 +329,82 @@ C99 and later; POSIX.1-2001 and later.
>  See also:
>  .BR imaxdiv (3)
>  .RE
> +.\"------------------------------------- int_fastN_t ------------------/
> +.TP
> +.IR int_fast N _t
> +.RS
> +Include:
> +.IR <stdint.h> .
> +Alternatively,
> +.IR <inttypes.h> .
> +.PP
> +.IR int_fast8_t ,
> +.IR int_fast16_t ,
> +.IR int_fast32_t ,
> +.I int_fast64_t
> +.PP
> +The fastest signed integer type
> +of a width of at least N bits,
> +N being the value specified in its type name.
> +According to the C language standard, they shall be
> +capable of storing values in the range
> +.RB [ INT_FAST N _MIN ,
> +.BR INT_FAST N _MAX ],
> +substituting N by the appropriate number.
> +.PP
> +The length modifiers for the
> +.IR int_fast N _t
> +types for the
> +.BR printf (3)
> +family of functions
> +are expanded by macros of the forms
> +.BR PRIdFAST N
> +and
> +.BR PRIiFAST N
> +(defined in
> +.IR <inttypes.h> );
> +resulting for example in
> +.B %"PRIdFAST64"
> +or
> +.B %"PRIiFAST64"
> +for printing
> +.I int_fast64_t
> +values.
> +The length modifiers for the
> +.IR int_fast N _t
> +types for the
> +.BR scanf (3)
> +family of functions
> +are expanded by macros of the forms
> +.BR SCNdFAST N
> +and
> +.BR SCNiFAST N,
> +(defined in
> +.IR <inttypes.h> );
> +resulting for example in
> +.B %"SCNdFAST8"
> +or
> +.B %"SCNiFAST8"
> +for scanning
> +.I int_fast8_t
> +values.
> +.PP
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
> +.PP
> +Notes:
> +Some of these types may be optimized for size
> +instead of raw performance.

I'm not sure what this tells me as a programmer. What does "raw
performance" means exactly? The text above says it's "the fastest",
but then it says "may be optimized for size". I don't know how to
interpret this. Is it fast or is it small, or something else? Is it
optimized for small size? Natural word size? Cacheline size?

I prefer the phrasing of the caveats in the C and POSIX standards
which just say it might not be fastest for all purposes.

How about "Where there is no single type that is fastest for all
purposes, the implementation may choose any type with the required
signedness and at least the minimum width."

I don't see anything in this man page saying that the <stdint.h> types
are all typedefs, rather than new types that are distinct from the
standard integer types. That seems like useful information.
