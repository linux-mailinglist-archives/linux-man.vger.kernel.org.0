Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BA31081D5A
	for <lists+linux-man@lfdr.de>; Mon,  5 Aug 2019 15:37:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728865AbfHENhY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Aug 2019 09:37:24 -0400
Received: from mx2.suse.de ([195.135.220.15]:51352 "EHLO mx1.suse.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726834AbfHENhY (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 5 Aug 2019 09:37:24 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx1.suse.de (Postfix) with ESMTP id 5495EAD18;
        Mon,  5 Aug 2019 13:37:22 +0000 (UTC)
Date:   Mon, 5 Aug 2019 23:37:44 +1000
From:   Aleksa Sarai <asarai@suse.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     "Serge E. Hallyn" <serge@hallyn.com>,
        linux-man <linux-man@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Andy Lutomirski <luto@amacapital.net>,
        Jordan Ogas <jogas@lanl.gov>, Al Viro <viro@ftp.linux.org.uk>,
        werner@almesberger.net, Aleksa Sarai <cyphar@cyphar.com>
Subject: Re: pivot_root(".", ".") and the fchdir() dance
Message-ID: <20190805133744.7sm6wx2rspwiuxu5@mikami>
References: <CAKgNAki0bR5zZr+kp_xjq+bNUky6-F+s2ep+jnR0YrjHhNMB1g@mail.gmail.com>
 <20190805103630.tu4kytsbi5evfrhi@mikami>
 <3a96c631-6595-b75e-f6a7-db703bf89bcf@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="np2ugc7obo2qaz74"
Content-Disposition: inline
In-Reply-To: <3a96c631-6595-b75e-f6a7-db703bf89bcf@gmail.com>
User-Agent: NeoMutt/20180716
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--np2ugc7obo2qaz74
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-08-05, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
> On 8/5/19 12:36 PM, Aleksa Sarai wrote:
> > On 2019-08-01, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wro=
te:
> >> I'd like to add some documentation about the pivot_root(".", ".")
> >> idea, but I have a doubt/question. In the lxc_pivot_root() code we
> >> have these steps
> >>
> >>         oldroot =3D open("/", O_DIRECTORY | O_RDONLY | O_CLOEXEC);
> >>         newroot =3D open(rootfs, O_DIRECTORY | O_RDONLY | O_CLOEXEC);
> >>
> >>         fchdir(newroot);
> >>         pivot_root(".", ".");
> >>
> >>         fchdir(oldroot);      // ****
> >=20
> > This one is "required" because (as the pivot_root(2) man page states),
> > it's technically not guaranteed by the kernel that the process's cwd
> > will be the same after pivot_root(2):
> >=20
> >> pivot_root() may or may not change the current root and the current
> >> working directory of any processes or threads which use the old root
> >> directory.
> >=20
> > Now, if it turns out that we can rely on the current behaviour (and the
> > man page you're improving is actually inaccurate on this point) then
> > you're right that this fchdir(2) isn't required.
>=20
> I'm not sure that I follow your logic here. In the old manual page
> text that you quote above, it says that [pivot_root() may change the
> CWD of any processes that use the old root directory]. Two points=20
> there:
>=20
> (1) the first fchdir() has *already* changed the CWD of the calling
> process to the new root directory, and

Right, I (and presumably the LXC folks as well) must've missed the
qualifier on the end of the sentence and was thinking that it said "you
can't trust CWD after pivot_root(2)".

My follow-up was going to be that we need to be in the old root to
umount, but as you mentioned that shouldn't be necessary either since
the umount will apply to the stacked mount (which is somewhat
counter-intuitively the earlier mount not the later one -- I will freely
admit that I don't understand all of the stacked and tucked mount
logic in VFS).

> (2) the manual page implied but did not explicitly say that the
> CWD of processes using the old root may be changed *to the new root
> directory* (rather than changed to some arbitrary location!);
> presumably, omitting to mention that detail explicitly in the manual
> page was an oversight, since that is indeed the kernel's behavior.
>=20
> The point is, the manual page was written 19 years ago and has
> barely been changed since then. Even at the time that the system
> call was officially released (in Linux 2.4.0), the manual page was
> already inaccurate in a number of details, since it was written=20
> about a year beforehand (during the 2.3 series), and the=20
> implementation already changed by the time of 2.4.0, but the manual
> page was not changed then (or since, but I'm working on that).
>=20
> The behavior has in practice always been (modulo the introduction
> of mount namespaces in 2001/2002):
>=20
>        pivot_root()  changes  the root directory and the current
>        working directory of each process or thread in  the  same
>        mount namespace to new_root if they point to the old root
>        directory.
>=20
> Given that this has been the behavior since Linux 2.4.0 was
> released, it improbable that this will ever change, since,
> notwithstanding what the manual page says, this would be an ABI
> breakage.
>=20
> I hypothesize that the original manual page text, written before
> the system call was even officially released, reflects Werner's
> belief at the time that perhaps in the not too distant future
> the implementation might change. But, 18 years on from 2.4.0,
> it has not.
>=20
> And arguably, the manual page should reflect that reality,
> describing what the kernel actually does, rather than speculating
> that things might (after 19 years) still sometime change.

I wasn't aware of the history of the man page, and took it as gospel
that we should avoid making assumptions about current's CWD surrounding
a pivot_root(2). Given the history (and that it appears the behaviour
was never intended to be changed after being merged), we should
definitely drop that text to avoid the confusion which has already
caused us container folks to implement this in a
more-convoluted-than-necessary fashion.

In case you haven't noticed already, you might want to also send a patch
to util-linux to also update pivot_root(8) which makes the same mistake
in its text:

> Note that, depending on the implementation of pivot_root, root and cwd
> of the caller may or may not change.

Then again, it's also possible this text is independently just as vague
for other reasons.

> > And this one is required because we are in @oldroot at this point, due
> > to the first fchdir(2). If we don't have the first one, then switching
> > from "." to "/" in the mount/umount2 calls should fix the issue.
>=20
> See my notes above for why I therefore think that the second fchdir()
> is also not needed (and therefore why switching from "." to "/" in the
> mount()/umount2() calls is unnecessary.

My gut feeling reading this was that operating on "." will result in you
doing the later mount operations on @newroot (since "." is @newroot) not
on the stacked mount which isn't your CWD.

*But* my gut feeling is obviously wrong (since you've tested it), and I
will again admit I don't understand quite how CWD references interact
with mount operations -- especially in the context of stacked mounts.

> Do you agree with my analysis?

Minus the mount bits that I'm not too sure about (I defer to
Christian/Serge/et al on that point), it seems reasonable to me.

My only real argument for keeping it the way it is, is that it's much
easier (for me, at least) to understand the semantics with explicit
fchdir(2)s. But that's not really a good reason to continue doing it the
way we do it now -- if it's documented in a man page that'd be more than
sufficient to avoid confusion when reading snippets that do it without
the fchdir(2)s.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--np2ugc7obo2qaz74
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEXzbGxhtUYBJKdfWmnhiqJn3bjbQFAl1IMSUACgkQnhiqJn3b
jbR9TxAAr3w1iw2zyRsIJt+qye7WLDUYc70Qq8XBW/+Xmbq5Vcf2gKXB3WAJb5PM
3D0Btda2Dw9tT69QJdEvVyt27FgwUzQAWo0m1Ki7NXI0AIocXV+a32NrBbtB+XKI
f2xY5J9oCCoJ1GErEO4SkchHcxWFyygGn3jQVavxfFDA2I6p7DOXtJ23X83ZTXqJ
i/Z4pu3TAPeU4SogXFJhBsdwsL8JFcLjDhnyK6SZws5oatneKvitC213J1CwGBno
G4PaYQ4JGmeg+ePSvogQigYBd7ZZ89yjJjum+HAqrwVu0AVkf5VGzWu/HNXRD22v
auU4MocADXFwbqjr5kDI/q5hpjVA97u4mbu06Wv9rqGIl8l1swORNJC4lZWN6uwT
uzASEopUcZKrCrsj7qEQmQnfMQXZz/1SNdl55TxRA2b/BOWozK0Q7utoLBx+UGBe
0wwiCr++euhANpRrGOmgZRDvwrhGL+56Qzo8GhkQpYffmOglpiVkdSzZ5wGhLusZ
IyXZH2t/vuEAoq9xEEtBvZLWW4dKnRKzYWWvV0hLEqajHRyxQCskc1LjBapE8rMm
E0UR94LE0TX/KnxDPX/8XDhNT7RGVlEhTF5qmBhT1sOfXrfZ3T0zW/awlbGDHfHu
1wtivpqvwbtdF8JpWiS9uU0Pnf+743nF10yDnvJnkJgBRBzaCfE=
=7p3L
-----END PGP SIGNATURE-----

--np2ugc7obo2qaz74--
