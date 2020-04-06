Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5A3F319F403
	for <lists+linux-man@lfdr.de>; Mon,  6 Apr 2020 13:01:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727074AbgDFLBb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Apr 2020 07:01:31 -0400
Received: from mail-ed1-f68.google.com ([209.85.208.68]:40714 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726841AbgDFLBb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Apr 2020 07:01:31 -0400
Received: by mail-ed1-f68.google.com with SMTP id w26so18661874edu.7
        for <linux-man@vger.kernel.org>; Mon, 06 Apr 2020 04:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=PBEIh84Ai/RYHw2a+6qxvU+viVvWs8gQoEkByQ736aQ=;
        b=KRaqfc6lDFKNNbIsmaUxy5MxSu38sJe3ZLbyXV1AJOviohWmyFBx4AcWIt631LYAOB
         xJWzQpk/ctwzZIvSQsDaH4ox4z9hVp+JfKirT1FA3upMbVCn3K7YQF2QJ4rWSS0VG9KV
         Y0NbUnj6QcCZ1T6KemEzCFFxgoHy6GMmLunM+hykkWKydUyhTRNfa8GnO56EM3cY81Dt
         MIqC+5PqQqEyD4sqZtKpfMxrTqm1TVF24DTmjdJQobWRNmqbCoEB+SVq2cS4+jO0qNUh
         zq+A1zyhtYyYH25X091gTgNChyat70532J2aKe3yPgnnznsXyi7zwl8pQRkJ080vV3YM
         u2OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=PBEIh84Ai/RYHw2a+6qxvU+viVvWs8gQoEkByQ736aQ=;
        b=Aj7zpN2ZK2WBeP09BDn9tf4+7p9NQH2ceVVCvtoiWdM00J9chn1xy5XIihriu/7dL2
         W87wTy/GrVqyx5/iRmYpiST5ANaJA+rSxZZr8GsMltkh1GDl8txz1F/for9rBhxCeHxl
         gB4rx76yky0pyJikTYrhWFYMtK3gdPNwqAZ1BKFDnf/c4Rvv6STl1IPJn9/pgGWCCNVM
         ddRKEw0oxKhXBdhVO7TDY73hGd2gSNd0I0CTzsBCC7SKU+M2B7ZSvE4ccLHIw6R+EdXS
         hHL+8cjzLpfcdAoMpfzgxISUub7GVmddBzYtEGEYG+a4y2xfwWWipsk0g4UvjDZtlVno
         nooA==
X-Gm-Message-State: AGi0PuZtkqRFrbJhZg5Wo0cNdHTA5d3+Vb2vw6+7DAatnVIsh3E7ADk2
        TeNQQPvdRys08E/mrAjPs2x47LhGAyV3YlD3T7dvAHVw
X-Google-Smtp-Source: APiQypIO1mFKPCXhjR3PEP3yeaNr+TXQ8bieuaJYg1pQEziEq26SuaXAi7x+ENTWLdEDMckUYQ2NFaWzJcsgX/PdKxs=
X-Received: by 2002:a17:906:1188:: with SMTP id n8mr1232118eja.150.1586170889490;
 Mon, 06 Apr 2020 04:01:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200404165739.GT21484@bombadil.infradead.org>
In-Reply-To: <20200404165739.GT21484@bombadil.infradead.org>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 6 Apr 2020 13:00:00 +0200
Message-ID: <CAKgNAkgBhWkF+d1GZh7=rxuSzcGGx_GNj6bDy3SoepLfodNwdw@mail.gmail.com>
Subject: Re: lseek(SEEK_DATA)
To:     Matthew Wilcox <willy@infradead.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC+=linux-man@]

Hi Matthew,

On Sat, 4 Apr 2020 at 18:57, Matthew Wilcox <willy@infradead.org> wrote:
>
>
> The current (*) text of the lseek manpage is ambiguous about the behaviour
> of lseek(SEEK_DATA) for a file which is entirely a hole (or the end of
> the file is a hole and the pos lies within the hole).  The draft POSIX
> language is specific (ENXIO is returned when whence is SEEK_DATA and
> offset lies within the final hole of the file).  Could I trouble you to
> wordsmith that in?
>
> (*) I'm looking at 5.05 dated 2019-03-06
>
> If you want to look at the draft POSIX text, it's here:
> https://www.austingroupbugs.net/view.php?id=415

Thanks. I applied the patch below.

Cheers,

Michael


diff --git a/man2/lseek.2 b/man2/lseek.2
index 32331aba5..04972c082 100644
--- a/man2/lseek.2
+++ b/man2/lseek.2
@@ -212,7 +212,13 @@ or
 .BR SEEK_HOLE ,
 and
 .I offset
-is beyond the end of the file.
+is beyond the end of the file, or
+.I whence
+is
+.B SEEK_DATA
+and
+.I offset
+is within a hole at the end of the file.
 .TP
 .B EOVERFLOW
 .\" HP-UX 11 says EINVAL for this case (but POSIX.1 says EOVERFLOW)


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
