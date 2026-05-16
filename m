Return-Path: <linux-man+bounces-5523-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SD8yAOI6CGpafQMAu9opvQ
	(envelope-from <linux-man+bounces-5523-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 11:37:38 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A71B55AF55
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 11:37:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7077F301050B
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 09:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EC5E3A641D;
	Sat, 16 May 2026 09:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OiEiQw6v"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B8C738E8C2
	for <linux-man@vger.kernel.org>; Sat, 16 May 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778924254; cv=none; b=WRJHkRTaZPQ3VsBfP5RxwgwyNxBEF8gbJRop5kJgD5LhSKTxiF++Dy043QnIdB6W9IdxBDUhYa40LBw386WC0qBaYpF7YnfN4DH05LGsjrYnifZ+6c+Uh19XHWP3GexNIhhv0fUClR/736MWx3jbhIoaG0zJknxyoUIFlabNq1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778924254; c=relaxed/simple;
	bh=pJtnVTLRTkZOERy+AZPBd7VOsrA8sOtKgXzLHMyqL1I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bk5C5/YaivQaeZDAj1f5fuuYgJyKQdl98uaKLq1Xs+UZx0ePL28jU78FmiC/86xJp2QP8YMfAVUPyBR/6dBQgeQP6Kr54WirZ0OeykswCU1NolUX85TxiHeq3btNg+gvYBzzxQzpDlg398mqTxyCgU3B71/0SylV2cpUI1Gwduw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OiEiQw6v; arc=none smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-65dbe04fc1bso935163d50.1
        for <linux-man@vger.kernel.org>; Sat, 16 May 2026 02:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778924251; x=1779529051; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Bbn5/1ndLTccRJui5aeKTO9X1S0MkTJTgdoAWh1lT7Q=;
        b=OiEiQw6vARO7TL5SiYIC0Q2No/Xy7pm5F88Gyi0Vy/QsQ13Y2s1UdP3l0W69Tivg93
         r88S31HJB0MDwEHQXXSv40DEg8e5B7VG4K00EBJfswmWI6/UX0eSKROLjLjAYquJFAzs
         uUXa/9byoOw7qLCTc4+zB93QFNXVRdXKo2Zz66x/aZcgX0xrJSSfUxvEN0NqN919whIw
         jzTTLaxFuR8SlTRYMvVJxd3mbRKxR1AxW0VdE3CO9fTuxuWrxCPJrUaAaTEV1H2M3DMO
         js/+YjDBXSvQLVn7PKs01uPC+IVXh6hEl/e9VTVP1xjHZSlj8roc5oQT9sY7atykTQZT
         Y1+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778924251; x=1779529051;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bbn5/1ndLTccRJui5aeKTO9X1S0MkTJTgdoAWh1lT7Q=;
        b=lAVqxm0V2FYkhlUd8+gIF6XDw6tFibuOkHpDDowulwO5+9Vh6QP3Lu47YwYynOHnLu
         wAPykVMfyTsEwYt1WCr+xWQWSDuYu3J53h2ZbmtjND4FX/PwpPaN6/OsSF0RUHfdcBLO
         oAU504lN9ueKeof5GnJDW1aClan+qxoM16neLtkW9LQF8shksJjM6Htx6V6aQNoygDap
         8C+5pq4ZD8x+wo6eY6Wy60Big+dXZuL/DVADOSUbRqNld0Fj6bYd7a85nz99KkOgnxHw
         f261rDEj78h/IP5/VYX170H2GubQOwtxD7qG8NtuvrVrqW7FqrDJ7+rUjiLAcWhxE2sA
         JZgg==
X-Gm-Message-State: AOJu0YzwSzXrfhSKu/r60W0qhq7qx5AaojB1yO9p13mMLnb7482ORIJf
	bEa4QxZkPA7MakZUfPvqlwMUYrez0swyBQ4MLWqCo1lGLmVjukatPEdjkkcFBg==
X-Gm-Gg: Acq92OHI82D1I+ZDfS6vrlKYLz+dlU2EWGLF7bo+aDDoyUqPuq2ZKBsq1dleIlGtGjf
	7KUAYzMTPPifV5i5BXKQgGgWNxF+W6L3w5kHFNw/0nDgmpw9dFX2KqvrVuV3uIFNiBTtg++vZyZ
	Too8eOeq/vyn1pRGkf78xJCCTLeZ1AGBG13W2rkt4Qx7NIe18ckB1bXi1XtcD6gi++oHi9hqKUN
	a5v4aB3HT6/4WMuXIYK/4Zh73hrJ0DNIPNszvb/Laiqr0Cw9lhzUfGjD/eiGJCgklG1BDcafBPv
	MPBJCF4YFCklFYomhsbEnldNjgBGbyCDApxfELMEq0laydA2AdyOFHrbDlKgGcY0mz+HYKm0xH5
	ECKwRUaUKvhY+DB/vIlKTfX6hHTnCxCZSrHiJJbiSbn4A8cbd7ziuIYC7Z40uWTgwx7Xx1lJ8NK
	eLxjDDrzOHZNjYCGu7U4UdT9DpG/hKr9Z6lg==
X-Received: by 2002:a05:690e:1282:b0:65d:cd2c:b1e1 with SMTP id 956f58d0204a3-65e227ec11bmr7356875d50.42.1778924251358;
        Sat, 16 May 2026 02:37:31 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-65e0d878cf2sm3794867d50.2.2026.05.16.02.37.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 May 2026 02:37:29 -0700 (PDT)
Date: Sat, 16 May 2026 04:37:27 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, funsafemath <funsafemath@proton.me>,
	Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH] man/man2const/PAGEMAP_SCAN.2const: fix typo
Message-ID: <20260516093727.cdioukxeq4iibgja@illithid>
References: <agf5NqqQzWRde7IR@nix-mail>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="akmf4xewci6nw677"
Content-Disposition: inline
In-Reply-To: <agf5NqqQzWRde7IR@nix-mail>
X-Rspamd-Queue-Id: 5A71B55AF55
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5523-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--akmf4xewci6nw677
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH] man/man2const/PAGEMAP_SCAN.2const: fix typo
MIME-Version: 1.0

At 2026-05-16T05:57:31+0100, funsafemath wrote:
> diff --git a/man/man2const/PAGEMAP_SCAN.2const b/man/man2const/PAGEMAP_SCAN.2const
> index ed2f6b72a..ff6436ec0 100644
> --- a/man/man2const/PAGEMAP_SCAN.2const
> +++ b/man/man2const/PAGEMAP_SCAN.2const
> @@ -197,7 +197,7 @@ .SH ERRORS
>  No memory is available.
>  .TP
>  .B EINTR
> -Fetal signal is pending.
> +Fatal signal is pending.
>  .SH STANDARDS
>  Linux.
>  .SH HISTORY

It appears that Stallman's notorious joke from the glibc manual[1] was
not, in fact, destroyed, but merely migrated...

Regards,
Branden

[1] https://lwn.net/Articles/770966/

--akmf4xewci6nw677
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmoIOs4ACgkQ0Z6cfXEm
bc7UTw/9EADXh5w24N5fOte85xj7C8+5lx2+7TSlCNykC2pz/3qLVncYTWRsVgRC
gshR+6p7RIEhjbfsvJC+dk/aUA4gug912ozrcipnOlREaxNnz9QVdTmNAcAs/BeC
ORaFdhvb1G5CDjIkvRhY9wyYfRrBa34OP1qXGr/5AInuh4ehPkIcOU5t+cgF4oBI
iy/7nW18iTNDpF0ju0LKZosouXbRNz/2XzuMF69jwByvI+Y7CSNDL2+r6+s4xDWB
p5t7ycL53P12Ia4QZufoVHA+Fv6dQxsco2AU0z3sFcFdJhe0yycCkEiDGbrWMpaK
+Gx9KVc5UOGI4rifJpsfPOLgs+UO0R46W6/vqGjS+TtxiVlhKnYnKG3sCbxYVRUm
AXuYnhTRhnimiobRv2IV5JOTjVW9frqLSLTVhwzHETFZe07RT31gXhCgb9MesL/4
ZJVjP3b1R5k0HdMwsf/eer2GO6EQhaPHXSGcWxCFUyVUCtXwzcz6FFVxlp21z/SK
qwaswEit7UY8SOiRK04GlESJAtB6utqvTYisP3is9FE6jBnDo6IKVmbaHPitq6xA
HAdl6rePxQqiaOfihn9biSWjuEWnwpfTWdkpvwj3B0TlGT7VE5VApxgQ8ebzyFlo
/pymesaFNC3y3/czA85241dLTFrU7BwexEXINaOvwNUjbr2X9fs=
=HIln
-----END PGP SIGNATURE-----

--akmf4xewci6nw677--

