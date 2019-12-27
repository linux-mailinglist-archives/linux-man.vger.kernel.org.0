Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5DEA812B26D
	for <lists+linux-man@lfdr.de>; Fri, 27 Dec 2019 08:23:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726329AbfL0HXN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 27 Dec 2019 02:23:13 -0500
Received: from mail-ed1-f66.google.com ([209.85.208.66]:40795 "EHLO
        mail-ed1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726310AbfL0HXN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 27 Dec 2019 02:23:13 -0500
Received: by mail-ed1-f66.google.com with SMTP id b8so24554288edx.7
        for <linux-man@vger.kernel.org>; Thu, 26 Dec 2019 23:23:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=9T3MBOvTesIjI5MdbkmKxOLYiHod7uAPDq2+ZJ0RFwo=;
        b=aktsDONya8EcvgS0PxQTdMl1AKjVFBJ2g3j+5XmQWiLvNyb7ozz4mzO1cx61+Y2qAy
         sBbgcH35kFbzUQnWxhzPY4hET57EFuI9V/q0JF//UTosAlWAzDXF9ZJBD4dSan8VuAS0
         UgRB1vBIPIA3LFXMT+KH7J/Cu0Uq3OEp5rMqRgdaWRdrl+37P1sy2ICWLPr+86Oc0IZh
         VP/lbjMtZyxO7TmG/hiWAvk6PySzwYLHC2NvbX6ql6eP9FfV3TaHk6ccNyFwKUFUOz4n
         55kvHFcPneHuLa7KI81jIL2SgvQCC8PqnTd/vsqjEtjdw9o3GZ811tZg7iFuaPG3VPnZ
         DWYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=9T3MBOvTesIjI5MdbkmKxOLYiHod7uAPDq2+ZJ0RFwo=;
        b=q7C7USIkI97f9VkZcW5uP25hX9zsnCo3V9vGy+MtKu2EpaIpqtOFO6fkRbKlHQbWIx
         K9phfpqnTu7O0G9XagJ/YfUW2bp0k+/+mZOwaIchEzZB622yE+xSkHPIUlZZdgXtCGLD
         O7KwxeeiK3zQtB7Ob7gNSWEhf/EtvOw8niT5iAT7mdRRgR6K3Ig6tJTiM9BpJA1A412V
         nEg18wsKAYgCtlcNRagxAeQLL9F43rPmMv0SltRPEnUyT6alOsS/BFa6xXOIvRB0hY6d
         A9bhN5DmxfvQ/jeHjbQ708suHEjEgywFcq7hAJjyok90SGBRjpM8Cv16g5J5xdpJi7MW
         U2aA==
X-Gm-Message-State: APjAAAVMrPpYlo08xH94M0y4uN/eAPJL5vrfq/xHHy7QWtTC4vQ59cTS
        joXsN9KyLe0EmGc3B4ZXdEqTN1o6PPkd7oI9ghQfIVTr
X-Google-Smtp-Source: APXvYqxiO2ZtcEvLg1fto3fXTLX20rHnktZMDahCBCbu+yaDUbo9zPC7XIzrNHhmu2CS5dVK0Kt63jfgXpqFOyYVq1Q=
X-Received: by 2002:a17:906:27d3:: with SMTP id k19mr52443154ejc.290.1577431391821;
 Thu, 26 Dec 2019 23:23:11 -0800 (PST)
MIME-Version: 1.0
References: <CAF2=S_KmYuApdphsVAHft0QZ8qN9aUD1yC33-6-UGSUbDdDrnw@mail.gmail.com>
In-Reply-To: <CAF2=S_KmYuApdphsVAHft0QZ8qN9aUD1yC33-6-UGSUbDdDrnw@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 27 Dec 2019 08:22:59 +0100
Message-ID: <CAKgNAkjbRYWYtqxV_UjWv3tU2zX3xMNcZOr2_3SsA5uYwTPnAw@mail.gmail.com>
Subject: Re: ping entry has typo
To:     cshaiku@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Chris,

Please see http://man7.org/linux/man-pages/man8/ping.8.html#COLOPHON
for info on how to report bugs for this manual page.

Cheers,

Michael

On Thu, 26 Dec 2019 at 22:20, Chris Simmons <cs.haiku@gmail.com> wrote:
>
> This:
>
>        -f
>            Flood ping. For every ECHO_REQUEST sent a period =E2=80=9C.=E2=
=80=9D is
> printed, while for ever ECHO_REPLY received a backspace is
>
>
> Should be:
>
>        -f
>            Flood ping. For every ECHO_REQUEST sent a period =E2=80=9C.=E2=
=80=9D is
> printed, while for every ECHO_REPLY received a backspace is
>
>
> Sincerely,
>
> Chris Simmons
> Tech Guru, Fullstack Developer



--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
