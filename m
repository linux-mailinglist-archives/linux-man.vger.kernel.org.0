Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7A163E4AE1
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 19:31:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234375AbhHIRbv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Aug 2021 13:31:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234364AbhHIRbt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Aug 2021 13:31:49 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEF51C06179A
        for <linux-man@vger.kernel.org>; Mon,  9 Aug 2021 10:31:28 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id a20so17280416plm.0
        for <linux-man@vger.kernel.org>; Mon, 09 Aug 2021 10:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=TEDhCij5SFJpBaGl9DgQ5wDfVd+hPB6d34sucdnyims=;
        b=TogOBzij2yEXJ4q8HgdNTI0nJv6h0CeFc22hKEpjP0+6eY259cqvQeNGzb88/b+Snu
         EohERG9g9w2cl7ZD2AlWkT1b/l1X25sdq2vX0nvThby/EH7+1d08BCR2RkQQvC41U7ge
         8Hzb8rvcIs7UfFF4fD728MLnq5+2DzIjugCZWmqM0xJvslwWpyCYkmtScuwfl1aVTxiY
         ADhSNvWnVc6fFzGDReT8VY/W6EmZdDH/YqiyWyjqiDq+aVhl2oXW5qP1FVBGehGcYwuS
         6sb/NUwPknsDIZleShmWUy6B0MB5g6hKxZSW7V0iG7WmYJ1Rxgb7TvimuQXhrEdvSaqy
         PxIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=TEDhCij5SFJpBaGl9DgQ5wDfVd+hPB6d34sucdnyims=;
        b=iQNGOJNTOXpoxAJ2XfZIja58AXtJdx3jTmW3gILIIkKQ62qhrX1rgXJac3OzLhR2Ks
         MYWtoOPvsDAoSr0rxqQSXu+VqodNmK+LuCu9Wn5dZhtIhKUnConDqRQZnAiwP4YWhGO6
         3ZB9hW4WRn3B/bfTfx42A+PGGuWhyyTwFCE5gkRX7MrYSuXpJxZHE8wRpZ0Xb0wGh4c+
         SpX/oG9znOzz0k32m1nLDQw3knDAnwBcsfpqaDedUOkotUVaTxrZdj6GLamp1aIImHI/
         4TQWbWDTGvRJ04bIfTTRm/PN0238pklnmmiFpDyqZE/omKI/IgHpXQ+fvE8HfZtyfLW2
         njEA==
X-Gm-Message-State: AOAM533KhPQK+0br0IZPI6oVBdmQr4nbeZBevaUtQDKYXmn8h0T1j6qN
        p46JoXBZZIAoqv4VOkVUIF7vL2EYE2L6laMUaoxc0g==
X-Google-Smtp-Source: ABdhPJzpQT1dpElU/+b0M2HXGALv8a+4IdOwgPiPhgKd6FX6JnsRo1d56GnaiK8xd0ZKgX+6T7ZARmiGxl7D8P9Dv7E=
X-Received: by 2002:a17:902:d48a:b029:12c:2142:6702 with SMTP id
 c10-20020a170902d48ab029012c21426702mr13863913plg.53.1628530287930; Mon, 09
 Aug 2021 10:31:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210805044411.18966-1-zhangkui@oppo.com>
In-Reply-To: <20210805044411.18966-1-zhangkui@oppo.com>
From:   Suren Baghdasaryan <surenb@google.com>
Date:   Mon, 9 Aug 2021 10:31:17 -0700
Message-ID: <CAJuCfpFC=LT70ug4iu+yrUvX9o81mMvP8rYrgEibD3YJmowwiQ@mail.gmail.com>
Subject: Re: [PATCH] process_madvise.2: Add MADV_WILLNEED to process_madvise()
To:     zhangkui <zhangkui@oppo.com>
Cc:     linux-man <linux-man@vger.kernel.org>, alx.manpages@gmail.com,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-mm <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Aug 4, 2021 at 9:44 PM zhangkui <zhangkui@oppo.com> wrote:
>
> Add MADV_WILLNEED to process_madvise() for read-ahead swapped
> out memory immediately when the app switches to forground.
>
> https://lore.kernel.org/patchwork/patch/1472006/
>
> Signed-off-by: zhangkui <zhangkui@oppo.com>

Reviewed-by: Suren Baghdasaryan <surenb@google.com>

> ---
>  man2/process_madvise.2 | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
> index a6c8724d4..caa8bc0b3 100644
> --- a/man2/process_madvise.2
> +++ b/man2/process_madvise.2
> @@ -112,6 +112,10 @@ See
>  .BR MADV_PAGEOUT
>  See
>  .BR madvise (2).
> +.TP
> +.BR MADV_WILLNEED
> +See
> +.BR madvise (2).
>  .PP
>  The
>  .I flags
> --
> 2.25.1
>
> ________________________________
> OPPO
>
> =E6=9C=AC=E7=94=B5=E5=AD=90=E9=82=AE=E4=BB=B6=E5=8F=8A=E5=85=B6=E9=99=84=
=E4=BB=B6=E5=90=AB=E6=9C=89OPPO=E5=85=AC=E5=8F=B8=E7=9A=84=E4=BF=9D=E5=AF=
=86=E4=BF=A1=E6=81=AF=EF=BC=8C=E4=BB=85=E9=99=90=E4=BA=8E=E9=82=AE=E4=BB=B6=
=E6=8C=87=E6=98=8E=E7=9A=84=E6=94=B6=E4=BB=B6=E4=BA=BA=E4=BD=BF=E7=94=A8=EF=
=BC=88=E5=8C=85=E5=90=AB=E4=B8=AA=E4=BA=BA=E5=8F=8A=E7=BE=A4=E7=BB=84=EF=BC=
=89=E3=80=82=E7=A6=81=E6=AD=A2=E4=BB=BB=E4=BD=95=E4=BA=BA=E5=9C=A8=E6=9C=AA=
=E7=BB=8F=E6=8E=88=E6=9D=83=E7=9A=84=E6=83=85=E5=86=B5=E4=B8=8B=E4=BB=A5=E4=
=BB=BB=E4=BD=95=E5=BD=A2=E5=BC=8F=E4=BD=BF=E7=94=A8=E3=80=82=E5=A6=82=E6=9E=
=9C=E6=82=A8=E9=94=99=E6=94=B6=E4=BA=86=E6=9C=AC=E9=82=AE=E4=BB=B6=EF=BC=8C=
=E8=AF=B7=E7=AB=8B=E5=8D=B3=E4=BB=A5=E7=94=B5=E5=AD=90=E9=82=AE=E4=BB=B6=E9=
=80=9A=E7=9F=A5=E5=8F=91=E4=BB=B6=E4=BA=BA=E5=B9=B6=E5=88=A0=E9=99=A4=E6=9C=
=AC=E9=82=AE=E4=BB=B6=E5=8F=8A=E5=85=B6=E9=99=84=E4=BB=B6=E3=80=82
>
> This e-mail and its attachments contain confidential information from OPP=
O, which is intended only for the person or entity whose address is listed =
above. Any use of the information contained herein in any way (including, b=
ut not limited to, total or partial disclosure, reproduction, or disseminat=
ion) by persons other than the intended recipient(s) is prohibited. If you =
receive this e-mail in error, please notify the sender by phone or email im=
mediately and delete it!
